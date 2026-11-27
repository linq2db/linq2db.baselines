-- PostgreSQL.19 PostgreSQL12
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.19 PostgreSQL12
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

