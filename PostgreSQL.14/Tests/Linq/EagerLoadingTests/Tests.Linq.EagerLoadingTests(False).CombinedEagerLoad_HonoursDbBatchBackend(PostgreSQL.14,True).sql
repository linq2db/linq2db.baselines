-- PostgreSQL.14 PostgreSQL.13
-- Batch 1
SELECT
	m_1."Id",
	d."Id",
	d."MasterId",
	d."Name"
FROM
	"MixedMaster" m_1
		INNER JOIN "MixedCorrelatedChild" d ON d."MasterId" = m_1."Id"
ORDER BY
	d."Id",
	m_1."Id"

-- Batch 2
SELECT
	t1."Id",
	t1."Name"
FROM
	"MixedDetachedChild" t1
ORDER BY
	t1."Id"

-- Batch 3
SELECT
	m_1."Id"
FROM
	"MixedMaster" m_1
ORDER BY
	m_1."Id"
