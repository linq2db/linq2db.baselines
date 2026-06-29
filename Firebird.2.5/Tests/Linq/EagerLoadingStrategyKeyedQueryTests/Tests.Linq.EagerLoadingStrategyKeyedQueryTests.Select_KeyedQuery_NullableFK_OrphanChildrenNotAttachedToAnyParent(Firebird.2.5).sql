-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."ParentId",
	"d"."Name"
FROM
	"NullableParent" "m_1"
		INNER JOIN "NullableChild" "d" ON "d"."ParentId" = "m_1"."Id"
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- Firebird.2.5 Firebird

SELECT
	"p"."Id",
	"p"."Name"
FROM
	"NullableParent" "p"
ORDER BY
	"p"."Id"

-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."ParentId",
	"d"."Name"
FROM
	"NullableParent" "m_1"
		INNER JOIN "NullableChild" "d" ON "d"."ParentId" = "m_1"."Id"
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- Firebird.2.5 Firebird

SELECT
	"p"."Id",
	"p"."Name"
FROM
	"NullableParent" "p"
ORDER BY
	"p"."Id"

