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

