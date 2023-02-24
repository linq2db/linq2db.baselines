﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @Id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @TestField BigInt(8) -- Int64
SET     @TestField = 12

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	@Id,
	@TestField
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @Id

