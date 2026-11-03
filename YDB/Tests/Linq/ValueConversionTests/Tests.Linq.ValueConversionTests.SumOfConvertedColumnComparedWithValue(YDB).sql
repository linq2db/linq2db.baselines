-- YDB Ydb
DECLARE $total Int32
SET     $total = 700

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.`Group` as Group_1
		FROM
			ConvertedAmount g_1
		GROUP BY
			g_1.`Group`
		HAVING
			SUM(g_1.Cents) = $total
	) t1

