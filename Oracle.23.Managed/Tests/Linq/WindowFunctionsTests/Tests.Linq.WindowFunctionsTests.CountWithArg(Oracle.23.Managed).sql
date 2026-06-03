-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(t."NullableIntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

