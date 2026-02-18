-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		CASE
			WHEN g_2.EnumValue IS NOT NULL THEN g_2.EnumValue
			ELSE 0
		END as field_1
	FROM
		(
			SELECT DISTINCT
				g_1.Value as Value_1,
				g_1.EnumValue as EnumValue
			FROM
				Issue4167Table g_1
			WHERE
				g_1.Value = '000001'
		) g_2
)
SELECT
	t1.field_1
FROM
	CTE_1 t1
ORDER BY
	t1.field_1

