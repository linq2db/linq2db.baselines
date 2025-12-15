-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Value"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"x"."Id"
				FROM
					"Item" "x"
			) "t1"
	) "m_1"
		INNER JOIN "ItemValue" "d" ON "m_1"."Id" = "d"."ItemId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"x_1"."Id",
	"x_1"."Text"
FROM
	(
		SELECT
			"x"."Id",
			"x"."Text",
			(
				SELECT
					SUM("a_Values"."Value")
				FROM
					"ItemValue" "a_Values"
				WHERE
					"x"."Id" = "a_Values"."ItemId"
			) as "Sum_1"
		FROM
			"Item" "x"
	) "x_1"
ORDER BY
	"x_1"."Sum_1"

