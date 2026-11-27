-- Firebird.5 Firebird4
SELECT
	"m_1"."Id",
	"d"."Name"
FROM
	(
		SELECT DISTINCT
			(
				SELECT
					"a_Children"."Id"
				FROM
					"RecursiveChildrenItem" "a_Children"
				WHERE
					"item_1"."Id" = "a_Children"."ParentId"
				FETCH NEXT 1 ROWS ONLY
			) as "Id"
		FROM
			"RecursiveChildrenItem" "item_1"
	) "m_1"
		INNER JOIN "RecursiveChildrenItem" "d" ON "m_1"."Id" = "d"."ParentId"

-- Firebird.5 Firebird4
SELECT
	"item_1"."Name",
	"t1"."Name",
	"t1"."Id"
FROM
	"RecursiveChildrenItem" "item_1"
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."Name",
				"a_Children"."Id"
			FROM
				"RecursiveChildrenItem" "a_Children"
			WHERE
				"item_1"."Id" = "a_Children"."ParentId"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

