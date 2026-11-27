-- DuckDB
SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	UsageOwner m_1
		INNER JOIN EnumUsageDetail d ON m_1.Id = d.FirstTableId

-- DuckDB
SELECT
	t1.Id
FROM
	UsageOwner t1

-- DuckDB
DECLARE $usage INTEGER -- Int32
SET     $usage = 0

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	UsageOwner m_1
		INNER JOIN EnumUsageDetail d ON m_1.Id = d.FirstTableId
WHERE
	d."Usage" = $usage

-- DuckDB
SELECT
	t1.Id
FROM
	UsageOwner t1

-- DuckDB
DECLARE $usage INTEGER -- Int32
SET     $usage = 1

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	UsageOwner m_1
		INNER JOIN EnumUsageDetail d ON m_1.Id = d.FirstTableId
WHERE
	d."Usage" = $usage

-- DuckDB
SELECT
	t1.Id
FROM
	UsageOwner t1

-- DuckDB
SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	UsageOwner m_1
		INNER JOIN EnumUsageDetail d ON m_1.Id = d.FirstTableId

-- DuckDB
SELECT
	t1.Id
FROM
	UsageOwner t1

-- DuckDB
DECLARE $usage INTEGER -- Int32
SET     $usage = 0

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	UsageOwner m_1
		INNER JOIN EnumUsageDetail d ON m_1.Id = d.FirstTableId
WHERE
	d."Usage" = $usage

-- DuckDB
SELECT
	t1.Id
FROM
	UsageOwner t1

-- DuckDB
DECLARE $usage INTEGER -- Int32
SET     $usage = 1

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	UsageOwner m_1
		INNER JOIN EnumUsageDetail d ON m_1.Id = d.FirstTableId
WHERE
	d."Usage" = $usage

-- DuckDB
SELECT
	t1.Id
FROM
	UsageOwner t1

