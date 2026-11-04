-- YDB Ydb
DECLARE $total Int32
SET     $total = 700

$CTE_1 = 	SELECT
		SUM(g_1.Cents) as Sum_1
	FROM
		ConvertedAmount g_1
	GROUP BY
		g_1.`Group`
;

SELECT
	COUNT(*) as Count_1
FROM
	ConvertedAmount t
WHERE
	$total IN (
		SELECT
			t1.Sum_1
		FROM
			$CTE_1 t1
	)

