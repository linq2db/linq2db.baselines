﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @TestField BigInt(8) -- Int64
SET     @TestField = 12
DECLARE @Int32Field Integer -- Int32
SET     @Int32Field = NULL

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue,
	IntValue
)
VALUES
(
	@Id,
	@TestField,
	@Int32Field
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p1

