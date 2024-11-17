﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1001

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	:ID,
	100,
	CAST(200 AS SmallInt)
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" t
SET
	"SmallIntValue" = CAST(t."MoneyValue" AS SmallInt),
	"MoneyValue" = CAST(t."SmallIntValue" AS Decimal(28, 10))
WHERE
	t.ID = :id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" t
SET
	"SmallIntValue" = CAST(t."MoneyValue" AS SmallInt),
	"MoneyValue" = CAST(t."SmallIntValue" AS Decimal(28, 10))
WHERE
	t.ID = :id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = :id
FETCH NEXT 2 ROWS ONLY

