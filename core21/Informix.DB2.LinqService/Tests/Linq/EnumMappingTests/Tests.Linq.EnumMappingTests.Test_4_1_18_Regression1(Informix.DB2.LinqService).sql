BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @Id

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
	r.BigIntValue, 
	r.IntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @Id

