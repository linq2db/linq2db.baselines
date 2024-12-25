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
	BigIntValue,
	IntValue
)
VALUES
(
	101,
	12,
	10
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.BigIntValue IS NOT NULL AND t1.IntValue IS NOT NULL,
	t1.BigIntValue,
	t1.IntValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = 101

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

