-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	LTRIM(t."CharColumn", '.+')
FROM
	"StringTrimTable" t

