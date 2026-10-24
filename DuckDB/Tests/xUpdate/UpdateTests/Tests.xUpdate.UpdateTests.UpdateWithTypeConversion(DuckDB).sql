-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1001

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	$ID,
	100,
	200
)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

UPDATE
	LinqDataTypes
SET
	SmallIntValue = CAST(Floor(LinqDataTypes.MoneyValue) AS SMALLINT),
	MoneyValue = CAST(LinqDataTypes.SmallIntValue AS DECIMAL)
WHERE
	LinqDataTypes.ID = $id

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

UPDATE
	LinqDataTypes
SET
	SmallIntValue = CAST(Floor(LinqDataTypes.MoneyValue) AS SMALLINT),
	MoneyValue = CAST(LinqDataTypes.SmallIntValue AS DECIMAL)
WHERE
	LinqDataTypes.ID = $id

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = $id
LIMIT 2

