-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

