﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."DateTimeValue2",
	t1."BoolValue",
	t1."GuidValue",
	t1."SmallIntValue",
	t1."IntValue",
	t1."BigIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = TIMESTAMP '2001-01-11 01:11:21.100000'
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Int16
SET     @BoolValue = 0
DECLARE @GuidValue Raw(16) -- Binary
SET     @GuidValue = HEXTORAW('659112EFFE6FF94DBB6BBB16E413C883')
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int64
SET     @BigIntValue = 1
DECLARE @StringValue Varchar2 -- String
SET     @StringValue = NULL
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = :MoneyValue,
	"LinqDataTypes"."DateTimeValue" = :DateTimeValue,
	"LinqDataTypes"."DateTimeValue2" = :DateTimeValue2,
	"LinqDataTypes"."BoolValue" = :BoolValue,
	"LinqDataTypes"."GuidValue" = :GuidValue,
	"LinqDataTypes"."SmallIntValue" = :SmallIntValue,
	"LinqDataTypes"."IntValue" = :IntValue,
	"LinqDataTypes"."BigIntValue" = :BigIntValue,
	"LinqDataTypes"."StringValue" = :StringValue
WHERE
	"LinqDataTypes".ID = :ID

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."DateTimeValue2",
	t1."BoolValue",
	t1."GuidValue",
	t1."SmallIntValue",
	t1."IntValue",
	t1."BigIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = TIMESTAMP '2001-01-11 01:11:21.100000'
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Int16
SET     @BoolValue = 1
DECLARE @GuidValue Raw(16) -- Binary
SET     @GuidValue = HEXTORAW('659112EFFE6FF94DBB6BBB16E413C883')
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int64
SET     @BigIntValue = 1
DECLARE @StringValue Varchar2 -- String
SET     @StringValue = NULL
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = :MoneyValue,
	"LinqDataTypes"."DateTimeValue" = :DateTimeValue,
	"LinqDataTypes"."DateTimeValue2" = :DateTimeValue2,
	"LinqDataTypes"."BoolValue" = :BoolValue,
	"LinqDataTypes"."GuidValue" = :GuidValue,
	"LinqDataTypes"."SmallIntValue" = :SmallIntValue,
	"LinqDataTypes"."IntValue" = :IntValue,
	"LinqDataTypes"."BigIntValue" = :BigIntValue,
	"LinqDataTypes"."StringValue" = :StringValue
WHERE
	"LinqDataTypes".ID = :ID

