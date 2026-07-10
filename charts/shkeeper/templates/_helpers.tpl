{{- define "shkeeper.waitForDb" -}}
- name: wait-for-db
  image: {{ .Values.waitForDb.image }}
  command: ['sh', '-c', 'until nc -z mariadb 3306; do echo "Waiting for MariaDB..."; sleep 2; done']
{{- end }}
