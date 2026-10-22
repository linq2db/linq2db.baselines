-- DB2 DB2.LUW DB2LUW
DECLARE @EmptyCount Integer(4) -- Int32
SET     @EmptyCount = 0
DECLARE @ItemsCount Integer(4) -- Int32
SET     @ItemsCount = 2

INSERT INTO "CountTarget"
(
	"Id",
	"EmptyCount",
	"ItemsCount"
)
VALUES
(
	1,
	@EmptyCount,
	@ItemsCount
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."EmptyCount",
	"t1"."ItemsCount"
FROM
	"CountTarget" "t1"
FETCH NEXT 2 ROWS ONLY

