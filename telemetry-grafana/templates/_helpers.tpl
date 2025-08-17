{{/*
Renvoie le nom du chart
*/}}
{{- define "mychart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Renvoie le nom complet du chart avec le nom de la release
*/}}
{{- define "mychart.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Version}}-{{ include "mychart.name" . }}
{{- end }}

{{/*
Renvoie le label commun pour les objets
*/}}
{{- define "mychart.labels" -}}
app.kubernetes.io/name: {{ include "mychart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}