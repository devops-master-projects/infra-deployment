{{- define "accommodation-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "accommodation-service.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "accommodation-service.name" . -}}
{{- end -}}
{{- end -}}

{{- define "accommodation-service.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "accommodation-service.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end -}}

{{- define "accommodation-service.selectorLabels" -}}
app.kubernetes.io/name: {{ include "accommodation-service.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
