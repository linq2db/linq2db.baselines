BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Id",
	"d".FK
FROM
	(
		SELECT DISTINCT
			"a_ObjectBOptional"."Id"
		FROM
			"EntityA" "t1"
				LEFT JOIN "EntityB" "a_ObjectBOptional" ON "t1".FK = "a_ObjectBOptional"."Id"
	) "m_1"
		INNER JOIN "EntityD" "d" ON "m_1"."Id" = "d".FK OR "m_1"."Id" IS NULL AND "d".FK IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1".FK,
	"a_ObjectBOptional"."Id",
	"a_ObjectBOptional".FK,
	"a_ObjectBOptional"."Id"
FROM
	"EntityA" "t1"
		LEFT JOIN "EntityB" "a_ObjectBOptional" ON "t1".FK = "a_ObjectBOptional"."Id"

