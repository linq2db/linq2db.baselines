BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ColumnOrderTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ColumnOrderTest
(
	RecordID       Int32,
	EffectiveStart DateTime64(7),
	EffectiveEnd   Nullable(DateTime64(7)),
	Key            Int32,
	Name           Nullable(String),
	Code           Nullable(String),
	Audit1ID       Int32,
	Audit2ID       Int32,

	 PRIMARY KEY (RecordID)
)
ENGINE = MergeTree()
ORDER BY RecordID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

select name, comment, engine LIKE '%View' from system.tables where is_temporary = 0 and database = database()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

select name, primary_key from system.tables where is_temporary = 0 and database = database() and primary_key <> ''

BeforeExecute
-- ClickHouse.Octonica ClickHouse


SELECT
	table,
	name,
	type,
	position,
	comment,
	multiIf(type LIKE '%FixedString%', character_octet_length, NULL),
	multiIf(type LIKE '%DateTime64%', datetime_precision, numeric_precision_radix = 10, numeric_precision, NULL),
	multiIf(numeric_precision_radix = 10, numeric_scale, NULL),
	is_in_primary_key
FROM system.columns
WHERE database = database() and default_kind <> 'ALIAS'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

select hostName()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

select database()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ColumnOrderTest

