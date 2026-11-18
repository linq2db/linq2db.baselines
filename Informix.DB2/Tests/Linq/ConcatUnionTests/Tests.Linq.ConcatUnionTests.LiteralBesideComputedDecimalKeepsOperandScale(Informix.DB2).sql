-- Informix.DB2 Informix
SELECT
	Abs(r."Value")
FROM
	FineDecimalRow r
UNION ALL
SELECT
	1.000000000005::Decimal(18, 12)
FROM
	FineDecimalRow r_1

