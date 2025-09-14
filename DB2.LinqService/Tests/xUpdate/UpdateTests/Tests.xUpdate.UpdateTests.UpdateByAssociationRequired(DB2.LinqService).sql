BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MainTable" "t1"
				INNER JOIN "AssociatedTable" "a_AssociatedRequired" ON "t1"."Id" = "a_AssociatedRequired"."Id"
				INNER JOIN "MainTable" "a_MainRequired" ON "a_AssociatedRequired"."Id" = "a_MainRequired"."Id"
		WHERE
			"t1"."Id" = @id AND "MainTable"."Id" = "a_MainRequired"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

