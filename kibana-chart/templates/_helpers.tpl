{{- define "kibana.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "kibana.labels" -}}
app.kubernetes.io/name: {{ include "kibana.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end -}}

{{- define "kibana.selectorLabels" -}}
app.kubernetes.io/name: {{ include "kibana.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
