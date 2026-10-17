-- YDB Ydb
DECLARE $Ids0_1 Decimal(4, 3)
SET     $Ids0_1 = Decimal('1.004', 22, 9)

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			MAX(g_1.`Value`) as Max_1
		FROM
			ScaledDecimalRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.Max_1 IN ($Ids0_1)

