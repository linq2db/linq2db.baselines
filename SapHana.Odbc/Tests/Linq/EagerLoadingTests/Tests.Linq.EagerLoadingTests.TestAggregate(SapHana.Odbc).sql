-- SapHana.Odbc SapHanaOdbc

SELECT
	"t3"."Sum_1",
	"t6"."Count_1"
FROM
	"MasterClass" "m_1"
		LEFT JOIN LATERAL (
			SELECT
				SUM("t2"."Sum_1") as "Sum_1"
			FROM
				(
					SELECT
						"t1"."Sum_1"
					FROM
						(
							SELECT DISTINCT
								"a_Details"."DetailId" as "Sum_1"
							FROM
								"DetailClass" "a_Details"
							WHERE
								"m_1"."Id1" = "a_Details"."MasterId"
						) "t1"
					ORDER BY
						"t1"."Sum_1"
					LIMIT 5 OFFSET 1
				) "t2"
		) "t3" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as "Count_1"
			FROM
				(
					SELECT
						*
					FROM
						(
							SELECT DISTINCT
								"a_Details_1"."DetailValue" as "Count_1"
							FROM
								"DetailClass" "a_Details_1"
							WHERE
								"m_1"."Id1" = "a_Details_1"."MasterId"
						) "t4"
					ORDER BY
						"t4"."Count_1"
					LIMIT 2 OFFSET 1
				) "t5"
		) "t6" ON 1=1

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

