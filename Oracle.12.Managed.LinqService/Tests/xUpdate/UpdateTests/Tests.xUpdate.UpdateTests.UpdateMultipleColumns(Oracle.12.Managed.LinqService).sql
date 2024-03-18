﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 1000
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 100

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	:ID,
	:MoneyValue,
	:SmallIntValue
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 2000
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 200
DECLARE @ID Int32
SET     @ID = 1001

UPDATE
	"LinqDataTypes" t
SET
	"MoneyValue" = :MoneyValue,
	"SmallIntValue" = :SmallIntValue
WHERE
	t.ID = :ID

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1001

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
	t.ID = :ID
FETCH NEXT 2 ROWS ONLY

