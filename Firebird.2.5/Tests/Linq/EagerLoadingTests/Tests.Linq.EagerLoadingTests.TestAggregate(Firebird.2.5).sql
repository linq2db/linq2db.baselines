-- Firebird.2.5 Firebird

SELECT
	(
		SELECT
			SUM("t1"."Sum_1")
		FROM
			(
				SELECT FIRST 5 SKIP 1 DISTINCT
					"a_Details"."DetailId" as "Sum_1"
				FROM
					"DetailClass" "a_Details"
				WHERE
					"m_1"."Id1" = "a_Details"."MasterId"
				ORDER BY
					"a_Details"."DetailId"
			) "t1"
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT FIRST 2 SKIP 1 DISTINCT
					"a_Details_1"."DetailValue" as "Count_1"
				FROM
					"DetailClass" "a_Details_1"
				WHERE
					"m_1"."Id1" = "a_Details_1"."MasterId"
				ORDER BY
					"a_Details_1"."DetailValue"
			) "t2"
	)
FROM
	"MasterClass" "m_1"

-- Firebird.2.5 Firebird

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

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id1",
	"t1"."Id2",
	"t1"."Value",
	"t1"."ByteValues"
FROM
	"MasterClass" "t1"

