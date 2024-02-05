BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 1000

BeforeExecute
-- Informix.DB2 Informix
DECLARE @tt BigInt(8) -- Int64
SET     @tt = 600000000

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	1001,
	@tt
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t.ID,
	t.BigIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 1000

