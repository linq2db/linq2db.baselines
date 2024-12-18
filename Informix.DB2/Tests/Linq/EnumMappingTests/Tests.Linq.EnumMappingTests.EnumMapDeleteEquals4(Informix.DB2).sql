BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	101,
	12
)

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID = 101 AND
	LinqDataTypes.ID IS NOT NULL AND
	LinqDataTypes.BigIntValue = 12 AND
	LinqDataTypes.BigIntValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

