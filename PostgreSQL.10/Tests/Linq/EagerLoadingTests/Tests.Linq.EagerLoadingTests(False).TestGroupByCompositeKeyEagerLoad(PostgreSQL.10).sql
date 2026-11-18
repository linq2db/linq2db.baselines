-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	m_1."MasterId",
	d."DetailId"
FROM
	(
		SELECT DISTINCT
			g_1."MasterId"
		FROM
			"DetailClass" g_1
	) m_1
		INNER JOIN "DetailClass" d ON d."MasterId" = m_1."MasterId" OR d."MasterId" IS NULL AND m_1."MasterId" IS NULL
ORDER BY
	d."DetailId"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	g_1."MasterId"
FROM
	"DetailClass" g_1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."DetailId",
	t1."MasterId",
	t1."DetailValue"
FROM
	"DetailClass" t1

