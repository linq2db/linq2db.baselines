-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 5000
DECLARE $MoneyValue Decimal(6, 2)
SET     $MoneyValue = Decimal('0', 22, 9)
DECLARE $DateTimeValue Timestamp -- DateTime2
SET     $DateTimeValue = Timestamp('2018-01-03T00:00:00.000000Z')
DECLARE $BoolValue Bool -- Boolean
SET     $BoolValue = false
DECLARE $GuidValue Uuid -- Guid
SET     $GuidValue = Uuid('00000000-0000-0000-0000-000000000000')
DECLARE $BinaryValue Bytes -- Binary
SET     $BinaryValue = NULL
DECLARE $SmallIntValue Int16
SET     $SmallIntValue = -2s
DECLARE $StringValue Text -- String
SET     $StringValue = NULL

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	StringValue
)
VALUES
(
	$ID,
	$MoneyValue,
	$DateTimeValue,
	$BoolValue,
	$GuidValue,
	$BinaryValue,
	$SmallIntValue,
	$StringValue
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	LinqDataTypes t
WHERE
	t.ID = 5000 AND t.DateTimeValue + DateTime::IntervalFromDays(t.SmallIntValue) < DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2018-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(102 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u))

-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID = 5000

