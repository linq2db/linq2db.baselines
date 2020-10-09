BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1,0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = TO_TIMESTAMP('2018-01-03 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')
DECLARE @BoolValue Int16
SET     @BoolValue = 0
DECLARE @GuidValue Raw(16) -- Binary
SET     @GuidValue = HEXTORAW('00000000000000000000000000000000')
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = NULL
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = -2
DECLARE @StringValue Varchar2 -- String
SET     @StringValue = NULL

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	StringValue
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
-- Oracle.Managed Oracle12
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4
DECLARE @p1 TimeStamp -- DateTime
SET     @p1 = TO_TIMESTAMP('2018-01-02 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')

SELECT 
	Count(*)
FROM
	LinqDataTypes t
WHERE
	t.ID = 5000 AND t.DateTimeValue + ((t.SmallIntValue + :part1) - :part2) * INTERVAL '1' DAY < :p1

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID = 5000

