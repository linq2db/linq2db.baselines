-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	m_1."Value1",
	d."item"
FROM
	(
		SELECT DISTINCT
			j."Value1"
		FROM
			"MissedJoinEntity" t1
				LEFT JOIN "MissedJoinEntity" j ON j."Id" = t1."Id" + 1000
	) m_1
		CROSS APPLY (
			SELECT m_1."Value1" AS "item" FROM sys.dual
			UNION ALL
			SELECT 5 FROM sys.dual) d

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	m_1."Value1",
	d."item"
FROM
	(
		SELECT DISTINCT
			j."Value1"
		FROM
			"MissedJoinEntity" t1
				LEFT JOIN "MissedJoinEntity" j ON j."Id" = t1."Id" + 1000
	) m_1
		CROSS APPLY (
			SELECT m_1."Value1" AS "item" FROM sys.dual
			UNION ALL
			SELECT 5 FROM sys.dual) d

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	j."Value1"
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value1",
	t1."Date",
	t1."Flag",
	t1."Name"
FROM
	"MissedJoinEntity" t1

