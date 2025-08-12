BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Has SmallInt(4) -- Boolean
SET     @Has = 1

SELECT
	"Id"
FROM
	NEW TABLE
	(
		INSERT INTO "Issue1438"
		(
			"Has"
		)
		VALUES
		(
			@Has
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	"t1"."Id",
	"t1"."Has"
FROM
	"Issue1438" "t1"
WHERE
	"t1"."Id" = @id
FETCH NEXT 2 ROWS ONLY

