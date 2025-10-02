BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + CAST(@offset AS Int) AS SmallInt)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Field"
FROM
	"Issue4963Table" "t1"

