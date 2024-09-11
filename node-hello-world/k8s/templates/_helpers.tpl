{{- define "node-hello-world.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "node-hello-world.fullname" -}}
{{- printf "%s-%s" (include "node-hello-world.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "node-hello-world.labels" -}}
helm.sh/chart: {{ include "node-hello-world.name" . }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}
