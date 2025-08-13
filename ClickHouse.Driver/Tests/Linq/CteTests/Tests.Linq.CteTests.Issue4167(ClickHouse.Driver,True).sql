BeforeExecute
-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		CASE
			WHEN g_1.EnumValue IS NOT NULL THEN g_1.EnumValue
			ELSE 0
		END as EnumValue
	FROM
		Issue4167Table g_1
	WHERE
		g_1.Value = '000001'
	GROUP BY
		g_1.Value,
		g_1.EnumValue
)
SELECT
	t1.EnumValue
FROM
	CTE_1 t1
ORDER BY
	t1.EnumValue

