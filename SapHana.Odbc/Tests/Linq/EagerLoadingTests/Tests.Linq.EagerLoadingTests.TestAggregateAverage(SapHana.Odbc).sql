-- SapHana.Odbc SapHanaOdbc

SELECT
	"t2"."Average"
FROM
	"MasterClass" "m_1"
		LEFT JOIN LATERAL (
			SELECT
				AVG(CAST("t1"."Average" AS Double)) as "Average"
			FROM
				(
					SELECT DISTINCT
						"a_Details"."DetailId" as "Average"
					FROM
						"DetailClass" "a_Details"
					WHERE
						"m_1"."Id1" = "a_Details"."MasterId"
					ORDER BY
						"a_Details"."DetailId"
					LIMIT 5 OFFSET 1
				) "t1"
		) "t2" ON 1=1
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"DetailClass" "a_Details_1"
		WHERE
			"m_1"."Id1" = "a_Details_1"."MasterId"
	) > 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id1",
	"d"."DetailId",
	"d"."MasterId",
	"d"."DetailValue"
FROM
	(
		SELECT DISTINCT
			"t1"."Id1"
		FROM
			"MasterClass" "t1"
	) "m_1"
		INNER JOIN "DetailClass" "d" ON "m_1"."Id1" = "d"."MasterId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id1",
	"t1"."Id2",
	"t1"."Value",
	"t1"."ByteValues"
FROM
	"MasterClass" "t1"

