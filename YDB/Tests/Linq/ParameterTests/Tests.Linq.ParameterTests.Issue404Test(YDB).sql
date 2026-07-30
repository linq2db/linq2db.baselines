-- YDB Ydb
SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.`Usage` as Usage_1,
	d.FirstTableId as FirstTableId
FROM
	Table404One m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId

-- YDB Ydb
SELECT
	t1.Id as Id
FROM
	Table404One t1

-- YDB Ydb
DECLARE $usage Int32
SET     $usage = 0

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.`Usage` as Usage_1,
	d.FirstTableId as FirstTableId
FROM
	Table404One m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.`Usage` = $usage

-- YDB Ydb
SELECT
	t1.Id as Id
FROM
	Table404One t1

-- YDB Ydb
DECLARE $usage Int32
SET     $usage = 1

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.`Usage` as Usage_1,
	d.FirstTableId as FirstTableId
FROM
	Table404One m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.`Usage` = $usage

-- YDB Ydb
SELECT
	t1.Id as Id
FROM
	Table404One t1

-- YDB Ydb
SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.`Usage` as Usage_1,
	d.FirstTableId as FirstTableId
FROM
	Table404One m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId

-- YDB Ydb
SELECT
	t1.Id as Id
FROM
	Table404One t1

-- YDB Ydb
DECLARE $usage Int32
SET     $usage = 0

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.`Usage` as Usage_1,
	d.FirstTableId as FirstTableId
FROM
	Table404One m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.`Usage` = $usage

-- YDB Ydb
SELECT
	t1.Id as Id
FROM
	Table404One t1

-- YDB Ydb
DECLARE $usage Int32
SET     $usage = 1

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.`Usage` as Usage_1,
	d.FirstTableId as FirstTableId
FROM
	Table404One m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.`Usage` = $usage

-- YDB Ydb
SELECT
	t1.Id as Id
FROM
	Table404One t1

