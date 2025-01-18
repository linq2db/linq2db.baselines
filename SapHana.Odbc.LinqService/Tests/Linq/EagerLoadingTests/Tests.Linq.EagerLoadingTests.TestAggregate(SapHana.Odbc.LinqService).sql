BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t3"."SUM_1",
	"t6"."COUNT_1"
FROM
	"MasterClass" "m_1"
		LEFT JOIN LATERAL (
			SELECT
				SUM("t2"."DetailId") as "SUM_1"
			FROM
				(
					SELECT
						"t1"."DetailId"
					FROM
						(
							SELECT DISTINCT
								"a_Details"."DetailId"
							FROM
								"DetailClass" "a_Details"
							WHERE
								"m_1"."Id1" = "a_Details"."MasterId"
						) "t1"
					ORDER BY
						"t1"."DetailId"
					LIMIT 5 OFFSET 1
				) "t2"
		) "t3" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as "COUNT_1"
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
								"m_1"."Id1" = "a_Details_1"."MasterId"
						) "t4"
					ORDER BY
						"t4"."DetailValue"
					LIMIT 2 OFFSET 1
				) "t5"
		) "t6" ON 1=1

BeforeExecute
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id1",
	"t1"."Id2",
	"t1"."Value",
	"t1"."ByteValues"
FROM
	"MasterClass" "t1"

