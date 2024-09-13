{{/*
Return the name of the chart
*/}}
{{- define "node-hello-world.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{/*
Return the fullname of the chart
*/}}
{{- define "node-hello-world.fullname" -}}
{{ include "node-hello-world.name" . }}
{{- end -}}
