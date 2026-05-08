-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

