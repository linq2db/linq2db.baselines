BeforeExecute
-- Firebird.3 Firebird3
DECLARE @offset SmallInt -- Int16
SET     @offset = -1

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + CAST(@offset AS SmallInt) AS SmallInt)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Field"
FROM
	"Issue4963Table" "t1"
FETCH NEXT 2 ROWS ONLY

