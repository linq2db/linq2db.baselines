﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Numeric(1, 0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp -- DateTime2
SET     @DateTimeValue = '2018-01-03'::date
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'::uuid
DECLARE @BinaryValue Bytea -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = 2
DECLARE @StringValue Text -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
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
-- PostgreSQL.15 PostgreSQL
DECLARE @p Timestamp -- DateTime2
SET     @p = '2018-01-02'::date

SELECT
	Count(*)
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 5000 AND t."DateTimeValue" + t."SmallIntValue" * Interval '1 Day' > :p

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = 5000

