-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

