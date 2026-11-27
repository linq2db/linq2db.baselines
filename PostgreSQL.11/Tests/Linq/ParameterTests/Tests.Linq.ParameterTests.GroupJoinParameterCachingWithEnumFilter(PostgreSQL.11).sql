-- PostgreSQL.11 PostgreSQL
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.11 PostgreSQL
DECLARE @usage Integer -- Int32
SET     @usage = 0

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :usage

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.11 PostgreSQL
DECLARE @usage Integer -- Int32
SET     @usage = 1

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :usage

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.11 PostgreSQL
DECLARE @usage Integer -- Int32
SET     @usage = 0

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :usage

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.11 PostgreSQL
DECLARE @usage Integer -- Int32
SET     @usage = 1

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :usage

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

