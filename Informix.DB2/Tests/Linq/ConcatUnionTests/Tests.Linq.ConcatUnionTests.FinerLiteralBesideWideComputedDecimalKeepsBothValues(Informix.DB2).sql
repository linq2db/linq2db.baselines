-- Informix.DB2 Informix
SELECT
	Abs(r."Value")
FROM
	WideDecimalRow r
UNION ALL
SELECT
	1.0000000000005::Decimal(29, 13)
FROM
	WideDecimalRow r_1

-- Informix.DB2 Informix
SELECT
	1.0000000000005::Decimal(29, 13)
FROM
	WideDecimalRow r
UNION ALL
SELECT
	Abs(r_1."Value")
FROM
	WideDecimalRow r_1

-- Informix.DB2 Informix
SELECT
	Abs(r."Value")
FROM
	WideDecimalRow r
UNION ALL
SELECT
	1.00000000000000005::Decimal(18, 17)
FROM
	WideDecimalRow r_1

-- Informix.DB2 Informix
SELECT
	1.00000000000000005::Decimal(18, 17)
FROM
	WideDecimalRow r
UNION ALL
SELECT
	Abs(r_1."Value")
FROM
	WideDecimalRow r_1

