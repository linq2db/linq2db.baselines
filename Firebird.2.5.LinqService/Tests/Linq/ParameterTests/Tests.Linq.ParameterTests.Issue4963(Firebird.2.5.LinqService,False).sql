BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + CAST(@offset AS Int) AS SmallInt)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 2
	"t1"."Field"
FROM
	"Issue4963Table" "t1"

