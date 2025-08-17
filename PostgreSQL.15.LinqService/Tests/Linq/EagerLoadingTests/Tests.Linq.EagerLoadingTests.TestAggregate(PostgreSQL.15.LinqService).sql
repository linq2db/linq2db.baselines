BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	(
		SELECT
			SUM(t2."DetailId")
		FROM
			(
				SELECT
					t1."DetailId"
				FROM
					(
						SELECT DISTINCT
							"a_Details"."DetailId"
						FROM
							"DetailClass" "a_Details"
						WHERE
							m_1."Id1" = "a_Details"."MasterId"
					) t1
				ORDER BY
					t1."DetailId"
				LIMIT 5 OFFSET 1 
			) t2
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT
					*
				FROM
					(
						SELECT DISTINCT
							"a_Details_1"."DetailValue"
						FROM
							"DetailClass" "a_Details_1"
						WHERE
							m_1."Id1" = "a_Details_1"."MasterId"
					) t3
				ORDER BY
					t3."DetailValue"
				LIMIT 2 OFFSET 1 
			) t4
	)
FROM
	"MasterClass" m_1

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id1",
	t1."Id2",
	t1."Value",
	t1."ByteValues"
FROM
	"MasterClass" t1

