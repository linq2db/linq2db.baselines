BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4,0)
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

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @value2 Decimal(5,0)
SET     @value2 = 13621
DECLARE @id Int32
SET     @id = 100500

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.SmallIntValue = Cast(Floor(LinqDataTypes.MoneyValue / (:value2 / Cast(LinqDataTypes.IntValue as Decimal(29,10)))) as SmallInt)
WHERE
	LinqDataTypes.ID = :id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 100500
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.SmallIntValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = :id AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 100500

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID = :id

