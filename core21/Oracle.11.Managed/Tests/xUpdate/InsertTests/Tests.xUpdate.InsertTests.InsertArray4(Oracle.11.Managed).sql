BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(1,0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @BoolValue Int16
SET     @BoolValue = 1
DECLARE @GuidValue Raw(16) -- Binary
SET     @GuidValue = HEXTORAW('00000000000000000000000000000000')
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('01020304')
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 0

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue
)
VALUES
(
	:ID,
	:MoneyValue,
	:DateTimeValue,
	:BoolValue,
	:GuidValue,
	:BinaryValue,
	:SmallIntValue
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT 
	t.ID, 
	t.MoneyValue, 
	t.DateTimeValue, 
	t.BoolValue, 
	t.GuidValue, 
	t.BinaryValue, 
	t.SmallIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

