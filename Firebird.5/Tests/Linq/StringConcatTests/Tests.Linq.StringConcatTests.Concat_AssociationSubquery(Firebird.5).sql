-- Firebird.5 Firebird4

SELECT
	"p"."Id",
	Coalesce((
		SELECT
			LIST(Coalesce("t1"."Value_1", ''), '')
		FROM
			(
				SELECT
					"a_Children"."Value" as "Value_1"
				FROM
					"ConcatChild" "a_Children"
				WHERE
					"p"."Id" = "a_Children"."ParentId"
				ORDER BY
					"a_Children"."Id"
			) "t1"
	), '')
FROM
	"ConcatParent" "p"
ORDER BY
	"p"."Id"

-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."ParentId",
	"d"."Value"
FROM
	"ConcatParent" "m_1"
		INNER JOIN "ConcatChild" "d" ON "m_1"."Id" = "d"."ParentId"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"ConcatParent" "t1"

