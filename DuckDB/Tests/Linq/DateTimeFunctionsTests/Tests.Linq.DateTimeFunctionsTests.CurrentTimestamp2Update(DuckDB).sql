-- DuckDB

UPDATE
	LinqDataTypes
SET
	BoolValue = True,
	DateTimeValue = now()
WHERE
	LinqDataTypes.ID = 100000

