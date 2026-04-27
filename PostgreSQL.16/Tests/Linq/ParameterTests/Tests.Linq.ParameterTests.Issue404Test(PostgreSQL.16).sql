-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

