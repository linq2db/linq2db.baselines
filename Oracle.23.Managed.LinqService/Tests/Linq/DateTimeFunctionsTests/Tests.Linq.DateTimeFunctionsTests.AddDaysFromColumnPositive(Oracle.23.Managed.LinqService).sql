BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @ID Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = TIMESTAMP '2018-01-03 00:00:00.000000'
DECLARE @BoolValue Int16
SET     @BoolValue = 0
DECLARE @GuidValue Raw(16) -- Binary
SET     @GuidValue = HEXTORAW('00000000000000000000000000000000')
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = NULL
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 2
DECLARE @StringValue Varchar2 -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue",
	"StringValue"
)
VALUES
(
	:ID,
	:MoneyValue,
	:DateTimeValue,
	:BoolValue,
	:GuidValue,
	:BinaryValue,
	:SmallIntValue,
	:StringValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 5000 AND t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' DAY > TO_TIMESTAMP('2018-01-02 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID = 5000

