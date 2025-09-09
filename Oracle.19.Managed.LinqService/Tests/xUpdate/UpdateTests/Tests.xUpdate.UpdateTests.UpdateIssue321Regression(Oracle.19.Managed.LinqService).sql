BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @ID Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Int16
SET     @BoolValue = NULL
DECLARE @GuidValue Raw -- Binary
SET     @GuidValue = NULL
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Int32
SET     @IntValue = 60
DECLARE @BigIntValue Int64
SET     @BigIntValue = NULL
DECLARE @StringValue Varchar2 -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"GuidValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)
VALUES
(
	:ID,
	:MoneyValue,
	:DateTimeValue,
	:DateTimeValue2,
	:BoolValue,
	:GuidValue,
	:SmallIntValue,
	:IntValue,
	:BigIntValue,
	:StringValue
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value2 Decimal(5, 0)
SET     @value2 = 13621
DECLARE @id Int32
SET     @id = 100500

UPDATE
	"LinqDataTypes" t1
SET
	"SmallIntValue" = CAST(Floor(t1."MoneyValue" / (:value2 / t1."IntValue")) AS SmallInt)
WHERE
	t1.ID = :id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @id Int32
SET     @id = 100500

SELECT
	t1."SmallIntValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1.ID = :id
FETCH NEXT 1 ROWS ONLY

