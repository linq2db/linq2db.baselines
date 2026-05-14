-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(t."CharColumn", '.+')
FROM
	"StringTrimTable" t

