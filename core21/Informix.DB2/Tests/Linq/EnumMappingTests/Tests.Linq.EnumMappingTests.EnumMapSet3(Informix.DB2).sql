BeforeExecute
-- Informix.DB2 Informix
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p1

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	101,
	3
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.IntValue = 4
WHERE
	LinqDataTypes.ID = 101 AND LinqDataTypes.IntValue = 3

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.IntValue = 4

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p1

