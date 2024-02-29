BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS FluentMapping

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS FluentMapping
(
	RecordID       Int32,
	EffectiveStart DateTime64(7),
	EffectiveEnd   Nullable(DateTime64(7)),
	Key            Int32,
	Unordered1     Int32,
	Unordered2     Int32,
	Audit1ID       Int32,
	Audit2ID       Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

select name, comment, engine LIKE '%View' from system.tables where is_temporary = 0 and database = database()

BeforeExecute
-- ClickHouse.Client ClickHouse

select name, primary_key from system.tables where is_temporary = 0 and database = database() and primary_key <> ''

BeforeExecute
-- ClickHouse.Client ClickHouse


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
-- ClickHouse.Client ClickHouse

select hostName()

BeforeExecute
-- ClickHouse.Client ClickHouse

select database()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS FluentMapping

