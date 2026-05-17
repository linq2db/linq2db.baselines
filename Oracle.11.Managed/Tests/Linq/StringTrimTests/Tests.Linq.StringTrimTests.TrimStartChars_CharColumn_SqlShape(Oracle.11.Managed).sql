-- Oracle.11.Managed Oracle11

SELECT
	LTRIM(t."CharColumn", '.+')
FROM
	"StringTrimTable" t

