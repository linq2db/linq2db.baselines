BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	m_2."Id1",
	d."DetailId",
	d."MasterId",
	d."DetailValue"
FROM
	(
		SELECT DISTINCT
			m_1."Id1"
		FROM
			"MasterClass" m_1
	) m_2
		INNER JOIN "DetailClass" d ON m_2."Id1" = d."MasterId"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	m_2."Id1",
	d_1."DetailId",
	d_1."MasterId",
	d_1."DetailValue"
FROM
	(
		SELECT DISTINCT
			m_1."Id1"
		FROM
			"MasterClass" m_1
	) m_2
		CROSS APPLY (
			SELECT
				d."DetailId",
				d."MasterId",
				d."DetailValue"
			FROM
				"DetailClass" d
			WHERE
				m_2."Id1" = d."MasterId"
			ORDER BY
				d."DetailId"
			OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
		) d_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	m_1."Id1",
	m_1."Id2",
	m_1."Value",
	m_1."ByteValues"
FROM
	"MasterClass" m_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	m_1."Id1",
	d."DetailId",
	d."MasterId",
	d."DetailValue"
FROM
	(
		SELECT DISTINCT
			t1."Id1"
		FROM
			"MasterClass" t1
	) m_1
		INNER JOIN "DetailClass" d ON m_1."Id1" = d."MasterId"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id1",
	t1."Id2",
	t1."Value",
	t1."ByteValues"
FROM
	"MasterClass" t1

