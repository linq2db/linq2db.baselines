-- Oracle.11.Managed Oracle11

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

