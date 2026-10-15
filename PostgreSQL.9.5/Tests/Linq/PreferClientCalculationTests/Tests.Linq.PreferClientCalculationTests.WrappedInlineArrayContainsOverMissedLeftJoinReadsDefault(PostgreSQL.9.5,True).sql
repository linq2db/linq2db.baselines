-- PostgreSQL.9.5 PostgreSQL
SELECT
	m_1."Value1",
	d.item
FROM
	(
		SELECT DISTINCT
			j."Value1"
		FROM
			"MissedJoinEntity" t1
				LEFT JOIN "MissedJoinEntity" j ON j."Id" = t1."Id" + 1000
	) m_1
		INNER JOIN LATERAL (VALUES
			(m_1."Value1"), (5)
		) d(item) ON 1=1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	m_1."Value1",
	d.item
FROM
	(
		SELECT DISTINCT
			j."Value1"
		FROM
			"MissedJoinEntity" t1
				LEFT JOIN "MissedJoinEntity" j ON j."Id" = t1."Id" + 1000
	) m_1
		INNER JOIN LATERAL (VALUES
			(m_1."Value1"), (5)
		) d(item) ON 1=1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	e."Id",
	j."Value1"
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Value1",
	t1."Date",
	t1."Flag",
	t1."Name"
FROM
	"MissedJoinEntity" t1

