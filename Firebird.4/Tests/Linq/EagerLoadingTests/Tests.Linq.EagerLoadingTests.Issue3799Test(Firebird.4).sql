-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."Name"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Test3799Item" "item_1"
				LEFT JOIN LATERAL (
					SELECT
						"a_Children"."Id"
					FROM
						"Test3799Item" "a_Children"
					WHERE
						"item_1"."Id" = "a_Children"."ParentId"
					FETCH NEXT 1 ROWS ONLY
				) "t1" ON 1=1
	) "m_1"
		INNER JOIN "Test3799Item" "d" ON "m_1"."Id" = "d"."ParentId"

-- Firebird.4 Firebird4

SELECT
	"item_1"."Name",
	"t1"."Name",
	"t1"."Id"
FROM
	"Test3799Item" "item_1"
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."Name",
				"a_Children"."Id"
			FROM
				"Test3799Item" "a_Children"
			WHERE
				"item_1"."Id" = "a_Children"."ParentId"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

