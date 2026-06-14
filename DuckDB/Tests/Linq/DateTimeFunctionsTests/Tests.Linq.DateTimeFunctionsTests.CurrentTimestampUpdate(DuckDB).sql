-- DuckDB

UPDATE
	LinqDataTypes
SET
	BoolValue = True,
	DateTimeValue = CURRENT_TIMESTAMP
WHERE
	LinqDataTypes.ID = 100000

