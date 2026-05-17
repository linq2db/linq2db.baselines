-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 1001

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	:ID,
	100,
	200
)

-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" t
SET
	"SmallIntValue" = CAST(Floor(t."MoneyValue") AS SmallInt),
	"MoneyValue" = CAST(t."SmallIntValue" AS Decimal(28, 10))
WHERE
	t.ID = :id

-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" t
SET
	"SmallIntValue" = CAST(Floor(t."MoneyValue") AS SmallInt),
	"MoneyValue" = CAST(t."SmallIntValue" AS Decimal(28, 10))
WHERE
	t.ID = :id

-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1001

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
	t.ID = :id AND ROWNUM <= 2

