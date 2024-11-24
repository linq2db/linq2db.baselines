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
	11
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	LinqDataTypes r
SET
	BigIntValue = 12
WHERE
	r.ID = 101 AND r.BigIntValue = 11

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

