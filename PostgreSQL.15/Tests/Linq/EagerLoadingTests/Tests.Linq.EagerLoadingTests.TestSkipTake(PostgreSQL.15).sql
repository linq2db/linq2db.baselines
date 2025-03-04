﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

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
		INNER JOIN LATERAL (
			SELECT
				d."DetailId",
				d."MasterId",
				d."DetailValue"
			FROM
				(
					SELECT
						"a_Details"."DetailId",
						"a_Details"."MasterId",
						"a_Details"."DetailValue"
					FROM
						"DetailClass" "a_Details"
					WHERE
						m_2."Id1" = "a_Details"."MasterId"
				) d
			ORDER BY
				d."DetailId"
			LIMIT 2 OFFSET 1 
		) d_1 ON 1=1

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id1",
	m_1."Id2",
	m_1."Value",
	m_1."ByteValues"
FROM
	"MasterClass" m_1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id1",
	t1."Id2",
	t1."Value",
	t1."ByteValues"
FROM
	"MasterClass" t1

