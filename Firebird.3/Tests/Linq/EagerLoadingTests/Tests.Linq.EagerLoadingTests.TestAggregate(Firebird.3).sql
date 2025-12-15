-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			SUM("t2"."Sum_1")
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
				OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
			) "t2"
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
							"a_Details_1"."DetailValue" as "Count_1"
						FROM
							"DetailClass" "a_Details_1"
						WHERE
							"m_1"."Id1" = "a_Details_1"."MasterId"
					) "t3"
				ORDER BY
					"t3"."Count_1"
				OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
			) "t4"
	)
FROM
	"MasterClass" "m_1"

-- Firebird.3 Firebird3

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

-- Firebird.3 Firebird3

SELECT
	"t1"."Id1",
	"t1"."Id2",
	"t1"."Value",
	"t1"."ByteValues"
FROM
	"MasterClass" "t1"

