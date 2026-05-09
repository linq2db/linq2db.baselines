-- Oracle.11.Managed Oracle11

SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

