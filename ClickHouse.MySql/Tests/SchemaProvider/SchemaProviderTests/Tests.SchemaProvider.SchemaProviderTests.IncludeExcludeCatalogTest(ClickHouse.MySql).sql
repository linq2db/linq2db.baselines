-- ClickHouse.MySql ClickHouse

SELECT
	r.name,
	CASE
		WHEN empty(replaceRegexpAll(coalesce(r.comment, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))
			THEN NULL
		ELSE r.comment
	END,
	r.engine
FROM
	system.tables r
WHERE
	NOT r.is_temporary AND r.database = database()

-- ClickHouse.MySql ClickHouse

SELECT
	r.name,
	r.primary_key
FROM
	system.tables r
WHERE
	NOT r.is_temporary AND r.database = database() AND
	r.primary_key <> ''

-- ClickHouse.MySql ClickHouse

SELECT
	r.table,
	r.name,
	r.type,
	r.position,
	CASE
		WHEN position(r.type, 'FixedString') > 0 THEN toInt32(r.character_octet_length)
		ELSE NULL
	END,
	CASE
		WHEN position(r.type, 'DateTime64') > 0 THEN toInt32(r.datetime_precision)
		WHEN r.numeric_precision_radix = toUInt64(10) THEN toInt32(r.numeric_precision)
		ELSE NULL
	END,
	CASE
		WHEN r.numeric_precision_radix = toUInt64(10) THEN toInt32(r.numeric_scale)
		ELSE NULL
	END,
	CASE
		WHEN empty(replaceRegexpAll(coalesce(r.comment, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))
			THEN NULL
		ELSE r.comment
	END,
	r.is_in_primary_key
FROM
	system.columns r
WHERE
	r.database = database() AND r.default_kind <> 'ALIAS'

-- ClickHouse.MySql ClickHouse

select hostName()

-- ClickHouse.MySql ClickHouse

select database()

-- ClickHouse.MySql ClickHouse

SELECT version()

-- ClickHouse.MySql ClickHouse

SELECT
	r.name,
	CASE
		WHEN empty(replaceRegexpAll(coalesce(r.comment, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))
			THEN NULL
		ELSE r.comment
	END,
	r.engine
FROM
	system.tables r
WHERE
	NOT r.is_temporary AND r.database = database()

-- ClickHouse.MySql ClickHouse

SELECT
	r.name,
	r.primary_key
FROM
	system.tables r
WHERE
	NOT r.is_temporary AND r.database = database() AND
	r.primary_key <> ''

-- ClickHouse.MySql ClickHouse

SELECT
	r.table,
	r.name,
	r.type,
	r.position,
	CASE
		WHEN position(r.type, 'FixedString') > 0 THEN toInt32(r.character_octet_length)
		ELSE NULL
	END,
	CASE
		WHEN position(r.type, 'DateTime64') > 0 THEN toInt32(r.datetime_precision)
		WHEN r.numeric_precision_radix = toUInt64(10) THEN toInt32(r.numeric_precision)
		ELSE NULL
	END,
	CASE
		WHEN r.numeric_precision_radix = toUInt64(10) THEN toInt32(r.numeric_scale)
		ELSE NULL
	END,
	CASE
		WHEN empty(replaceRegexpAll(coalesce(r.comment, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))
			THEN NULL
		ELSE r.comment
	END,
	r.is_in_primary_key
FROM
	system.columns r
WHERE
	r.database = database() AND r.default_kind <> 'ALIAS'

-- ClickHouse.MySql ClickHouse

select hostName()

-- ClickHouse.MySql ClickHouse

select database()

-- ClickHouse.MySql ClickHouse

SELECT version()

-- ClickHouse.MySql ClickHouse

SELECT
	r.name,
	CASE
		WHEN empty(replaceRegexpAll(coalesce(r.comment, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))
			THEN NULL
		ELSE r.comment
	END,
	r.engine
FROM
	system.tables r
WHERE
	NOT r.is_temporary AND r.database = database()

-- ClickHouse.MySql ClickHouse

SELECT
	r.name,
	r.primary_key
FROM
	system.tables r
WHERE
	NOT r.is_temporary AND r.database = database() AND
	r.primary_key <> ''

-- ClickHouse.MySql ClickHouse

SELECT
	r.table,
	r.name,
	r.type,
	r.position,
	CASE
		WHEN position(r.type, 'FixedString') > 0 THEN toInt32(r.character_octet_length)
		ELSE NULL
	END,
	CASE
		WHEN position(r.type, 'DateTime64') > 0 THEN toInt32(r.datetime_precision)
		WHEN r.numeric_precision_radix = toUInt64(10) THEN toInt32(r.numeric_precision)
		ELSE NULL
	END,
	CASE
		WHEN r.numeric_precision_radix = toUInt64(10) THEN toInt32(r.numeric_scale)
		ELSE NULL
	END,
	CASE
		WHEN empty(replaceRegexpAll(coalesce(r.comment, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))
			THEN NULL
		ELSE r.comment
	END,
	r.is_in_primary_key
FROM
	system.columns r
WHERE
	r.database = database() AND r.default_kind <> 'ALIAS'

-- ClickHouse.MySql ClickHouse

select hostName()

-- ClickHouse.MySql ClickHouse

select database()

-- ClickHouse.MySql ClickHouse

SELECT version()

