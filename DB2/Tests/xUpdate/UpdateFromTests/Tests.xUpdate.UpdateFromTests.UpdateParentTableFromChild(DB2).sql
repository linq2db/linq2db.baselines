-- DB2 DB2.LUW DB2LUW

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

-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Id",
	"p"."Value"
FROM
	"ParentTable" "p"
WHERE
	"p"."Id" = 2
FETCH NEXT 1 ROWS ONLY

