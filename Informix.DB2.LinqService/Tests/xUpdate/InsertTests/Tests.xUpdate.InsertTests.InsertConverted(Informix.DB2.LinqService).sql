BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 1000

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	t.ID,
	t.BigIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 1000

