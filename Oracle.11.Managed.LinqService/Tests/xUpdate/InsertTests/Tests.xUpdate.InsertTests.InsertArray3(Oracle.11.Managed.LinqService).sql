BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @arr Blob -- Object
SET     @arr = HEXTORAW('01020304')

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	:arr
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1001 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

