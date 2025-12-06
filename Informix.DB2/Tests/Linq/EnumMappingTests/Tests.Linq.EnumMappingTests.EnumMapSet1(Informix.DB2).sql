-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

-- Informix.DB2 Informix

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	101,
	11
)

-- Informix.DB2 Informix
DECLARE @TestField BigInt(8) -- Int64
SET     @TestField = 12

UPDATE
	LinqDataTypes r
SET
	BigIntValue = @TestField
WHERE
	r.ID = 101 AND r.BigIntValue = 11

-- Informix.DB2 Informix

SELECT FIRST 1
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

