-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Id",
	"d".FK
FROM
	(
		SELECT DISTINCT
			"a_ObjectB"."Id"
		FROM
			"EntityA" "t1"
				INNER JOIN "EntityB" "a_ObjectB" ON "t1".FK = "a_ObjectB"."Id"
	) "m_1"
		INNER JOIN "EntityD" "d" ON "m_1"."Id" = "d".FK

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1".FK,
	"a_ObjectB"."Id",
	"a_ObjectB".FK,
	"a_ObjectB"."Id"
FROM
	"EntityA" "t1"
		INNER JOIN "EntityB" "a_ObjectB" ON "t1".FK = "a_ObjectB"."Id"

