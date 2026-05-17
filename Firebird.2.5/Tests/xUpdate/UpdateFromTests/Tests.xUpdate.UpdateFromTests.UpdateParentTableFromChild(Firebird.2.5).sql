-- Firebird.2.5 Firebird

UPDATE
	"ParentTable"
SET
	"Value" = "ParentTable"."Value" * 10
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"ChildTable" "c_1"
				INNER JOIN "ParentTable" "a_Parent" ON "c_1"."ParentId" = "a_Parent"."Id"
		WHERE
			"a_Parent"."Id" = 2 AND "ParentTable"."Id" = "a_Parent"."Id"
	)

-- Firebird.2.5 Firebird

SELECT FIRST 1
	"p"."Id",
	"p"."Value"
FROM
	"ParentTable" "p"
WHERE
	"p"."Id" = 2

