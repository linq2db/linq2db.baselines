BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id1 Int32
SET     @id1 = 3000
DECLARE @id2 Int32
SET     @id2 = 4000
DECLARE @value_1 Varchar2(3) -- String
SET     @value_1 = 'two'

INSERT ALL
WHEN "Value_1" IS NULL THEN
	INTO "LinqDataTypes"
	(
		ID,
		"StringValue"
	)
	VALUES
	(
		:id1,
		"Value_1"
	)
WHEN "Value_1" IS NOT NULL THEN
	INTO "LinqDataTypes"
	(
		ID,
		"StringValue"
	)
	VALUES
	(
		:id2,
		"Value_1"
	)
SELECT
	:value_1 as "Value_1"
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

