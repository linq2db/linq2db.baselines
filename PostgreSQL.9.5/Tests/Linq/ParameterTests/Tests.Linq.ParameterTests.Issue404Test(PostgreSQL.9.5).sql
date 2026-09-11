-- PostgreSQL.9.5 PostgreSQL
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.9.5 PostgreSQL
DECLARE @usage Integer -- Int32
SET     @usage = 0

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :usage

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.9.5 PostgreSQL
DECLARE @usage Integer -- Int32
SET     @usage = 1

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :usage

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.9.5 PostgreSQL
DECLARE @usage Integer -- Int32
SET     @usage = 0

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :usage

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.9.5 PostgreSQL
DECLARE @usage Integer -- Int32
SET     @usage = 1

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :usage

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id"
FROM
	"Table404One" t1

