-- Oracle.12.Managed Oracle.Managed Oracle12

WITH CTE_1 ("Property1")
AS
(
	SELECT
		a."Property2"
	FROM
		"NestingC" a
)
SELECT
	c2."Property1",
	t_1."Property2",
	t_1."Property3"
FROM
	CTE_1 c2
		CROSS JOIN "NestingC" t
		CROSS JOIN "NestingC" t_1

