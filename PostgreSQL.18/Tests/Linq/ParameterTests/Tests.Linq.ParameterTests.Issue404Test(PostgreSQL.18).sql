-- PostgreSQL.18
-- Batch 1
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

-- Batch 2
SELECT
	t1."Id"
FROM
	"Table404One" t1
-- PostgreSQL.18
-- Batch 1
-- Usage = 0
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :Usage

-- Batch 2
SELECT
	t1."Id"
FROM
	"Table404One" t1
-- PostgreSQL.18
-- Batch 1
-- Usage = 1
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :Usage

-- Batch 2
SELECT
	t1."Id"
FROM
	"Table404One" t1
-- PostgreSQL.18
-- Batch 1
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

-- Batch 2
SELECT
	t1."Id"
FROM
	"Table404One" t1
-- PostgreSQL.18
-- Batch 1
-- Usage = 0
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :Usage

-- Batch 2
SELECT
	t1."Id"
FROM
	"Table404One" t1
-- PostgreSQL.18
-- Batch 1
-- Usage = 1
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :Usage

-- Batch 2
SELECT
	t1."Id"
FROM
	"Table404One" t1
