-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	YdbWideDecimalRow r
WHERE
	Abs(r.`Value`) = Decimal('1.004', 4, 3)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	YdbWideDecimalRow r
WHERE
	Abs(r.`Value`) <> Decimal('1.004', 4, 3)

-- YDB Ydb
DECLARE $Ids0_1 Decimal(4, 3)
SET     $Ids0_1 = Decimal('1.004', 22, 9)

SELECT
	COUNT(*) as Count_1
FROM
	YdbWideDecimalRow r
WHERE
	Abs(r.`Value`) IN ($Ids0_1)

