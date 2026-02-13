-- SapHana.Odbc SapHanaOdbc

SELECT
	"t2"."Sum_1",
	"t4"."Count_1"
FROM
	"MasterClass" "m_1"
		LEFT JOIN LATERAL (
			SELECT
				SUM("t1"."Sum_1") as "Sum_1"
			FROM
				(
					SELECT DISTINCT
						"a_Details"."DetailId" as "Sum_1"
					FROM
						"DetailClass" "a_Details"
					WHERE
						"m_1"."Id1" = "a_Details"."MasterId"
					ORDER BY
						"a_Details"."DetailId"
					LIMIT 5 OFFSET 1
				) "t1"
		) "t2" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as "Count_1"
			FROM
				(
					SELECT DISTINCT
						"a_Details_1"."DetailValue" as "Count_1"
					FROM
						"DetailClass" "a_Details_1"
					WHERE
						"m_1"."Id1" = "a_Details_1"."MasterId"
					ORDER BY
						"a_Details_1"."DetailValue"
					LIMIT 2 OFFSET 1
				) "t3"
		) "t4" ON 1=1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Item1",
	"d"."DetailId",
	"d"."MasterId",
	"d"."DetailValue"
FROM
	(
		SELECT DISTINCT
			"t1"."Id1" as "Item1"
		FROM
			"MasterClass" "t1"
	) "m_1"
		INNER JOIN "DetailClass" "d" ON "m_1"."Item1" = "d"."MasterId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id1",
	"t1"."Id2",
	"t1"."Value",
	"t1"."ByteValues"
FROM
	"MasterClass" "t1"

