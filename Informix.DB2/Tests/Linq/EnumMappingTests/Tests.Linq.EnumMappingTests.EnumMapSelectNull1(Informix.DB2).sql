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
	ID
)
VALUES
(
	101
)

-- Informix.DB2 Informix

SELECT FIRST 1
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

