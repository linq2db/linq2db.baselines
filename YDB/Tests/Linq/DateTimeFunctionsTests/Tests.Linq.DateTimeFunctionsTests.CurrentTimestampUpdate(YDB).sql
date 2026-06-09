-- YDB Ydb

UPDATE
	LinqDataTypes
SET
	BoolValue = true,
	DateTimeValue = CurrentUtcTimestamp()
WHERE
	LinqDataTypes.ID = 100000

