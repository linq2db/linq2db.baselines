-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(t."CharColumn", '.+')
FROM
	"StringTrimTable" t

