-- Oracle.11.Managed Oracle11

SELECT
	m_1."Id",
	m_1.C1,
	d."Id",
	d."FormId",
	d."OrderIndex",
	d."Name1",
	d."Name2",
	d."Name3"
FROM
	(
		SELECT
			t1."Id",
			t1.C1
		FROM
			"Issue4596Form" t1
		WHERE
			ROWNUM <= 1
	) m_1
		INNER JOIN "Issue4596Item" d ON d."FormId" = m_1."Id"
ORDER BY
	CASE
		WHEN m_1.C1 = 'T' THEN d."OrderIndex"
		ELSE 0
	END,
	CASE
		WHEN m_1.C1 <> 'T' THEN d."Name1"
		ELSE ''
	END,
	CASE
		WHEN m_1.C1 <> 'T' THEN d."Name2"
		ELSE ''
	END,
	CASE
		WHEN m_1.C1 <> 'T' THEN d."Name3"
		ELSE ''
	END

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1.C1
FROM
	"Issue4596Form" t1
WHERE
	ROWNUM <= 1

