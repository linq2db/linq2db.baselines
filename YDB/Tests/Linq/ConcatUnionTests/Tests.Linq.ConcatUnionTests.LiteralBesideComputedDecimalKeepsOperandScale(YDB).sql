-- YDB Ydb
SELECT
	Abs(r.`Value`) as c1
FROM
	FineDecimalRow r
UNION ALL
SELECT
	Unwrap(CAST(Decimal('1.000000000005', 18, 12) AS Decimal(18,12))) as c1
FROM
	FineDecimalRow r_1

