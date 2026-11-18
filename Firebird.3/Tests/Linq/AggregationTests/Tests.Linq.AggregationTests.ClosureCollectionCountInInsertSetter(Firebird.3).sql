-- Firebird.3 Firebird3
DECLARE @EmptyCount Integer -- Int32
SET     @EmptyCount = 0
DECLARE @ItemsCount Integer -- Int32
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

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."EmptyCount",
	"t1"."ItemsCount"
FROM
	"CountTarget" "t1"
FETCH NEXT 2 ROWS ONLY

