BeforeExecute
-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		a.Property2 as Property1
	FROM
		NestingC a
)
SELECT
	c2.Property1,
	t_1.Property2,
	t_1.Property3
FROM
	CTE_1 c2
		CROSS JOIN NestingC t
		CROSS JOIN NestingC t_1

