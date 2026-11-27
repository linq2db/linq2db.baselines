-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @usage Int32
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @usage Int32
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	"UsageOwner" m_1
		INNER JOIN "EnumUsageDetail" d ON m_1."Id" = d."FirstTableId"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @usage Int32
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @usage Int32
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id"
FROM
	"UsageOwner" t1

