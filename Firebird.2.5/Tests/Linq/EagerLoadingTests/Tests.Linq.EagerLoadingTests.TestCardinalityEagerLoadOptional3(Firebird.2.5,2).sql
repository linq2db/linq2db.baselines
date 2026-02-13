-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
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
		INNER JOIN "EntityD" "d" ON "m_1"."Id" = "d".FK

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1".FK,
	"a_ObjectBOptional"."Id",
	"a_ObjectBOptional".FK,
	"a_ObjectBOptional"."Id"
FROM
	"EntityA" "t1"
		LEFT JOIN "EntityB" "a_ObjectBOptional" ON "t1".FK = "a_ObjectBOptional"."Id"

