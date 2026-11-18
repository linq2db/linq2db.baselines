-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	ScaledBoundRow r
WHERE
	Unwrap(CAST(r.`Value` AS Decimal(22,9))) > Decimal('0.005', 22, 9)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	ScaledBoundRow r
WHERE
	Unwrap(CAST(r.`Value` AS Decimal(22,9))) < Decimal('0.005', 22, 9)

