-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Usage Integer -- Int32
SET     @Usage = 0

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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Usage Integer -- Int32
SET     @Usage = 1

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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"Table404One" m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Usage Integer -- Int32
SET     @Usage = 0

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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Usage Integer -- Int32
SET     @Usage = 1

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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id"
FROM
	"Table404One" t1

