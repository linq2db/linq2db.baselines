-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	LTRIM(t."CharColumn", '.+')
FROM
	"StringTrimTable" t

