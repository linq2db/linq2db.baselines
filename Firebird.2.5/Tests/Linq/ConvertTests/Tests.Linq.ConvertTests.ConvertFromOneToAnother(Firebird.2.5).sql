-- Firebird.2.5 Firebird
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT FIRST 1
	CAST(@value AS Real)
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
DECLARE @value Float -- Single
SET     @value = 6579.64648

SELECT FIRST 1
	CAST(@value AS Real)
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
DECLARE @value Double
SET     @value = 6579.6464800000003

SELECT FIRST 1
	CAST(@value AS Real)
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT FIRST 1
	CAST(@value AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
DECLARE @value Float -- Single
SET     @value = 6579.64648

SELECT FIRST 1
	CAST(@value AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
DECLARE @value Double
SET     @value = 6579.6464800000003

SELECT FIRST 1
	CAST(@value AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t1"

