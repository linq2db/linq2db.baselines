-- PostgreSQL.13 PostgreSQL

SELECT
	(
		SELECT
			AVG(t1."Average"::Float) as "Average"
		FROM
			(
				SELECT DISTINCT
					"a_Details"."DetailId" as "Average"
				FROM
					"DetailClass" "a_Details"
				WHERE
					m_1."Id1" = "a_Details"."MasterId"
				ORDER BY
					"a_Details"."DetailId"
				LIMIT 5 OFFSET 1 
			) t1
	)
FROM
	"MasterClass" m_1
WHERE
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"DetailClass" "a_Details_1"
		WHERE
			m_1."Id1" = "a_Details_1"."MasterId"
	) > 1

-- PostgreSQL.13 PostgreSQL

SELECT
	m_1."Item1",
	d."DetailId",
	d."MasterId",
	d."DetailValue"
FROM
	(
		SELECT DISTINCT
			t1."Id1" as "Item1"
		FROM
			"MasterClass" t1
	) m_1
		INNER JOIN "DetailClass" d ON m_1."Item1" = d."MasterId"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id1",
	t1."Id2",
	t1."Value",
	t1."ByteValues"
FROM
	"MasterClass" t1

