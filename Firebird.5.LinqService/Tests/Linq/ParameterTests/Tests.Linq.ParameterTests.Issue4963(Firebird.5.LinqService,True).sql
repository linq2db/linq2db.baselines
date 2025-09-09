BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + -1 AS SmallInt)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."Field"
FROM
	"Issue4963Table" "t1"
FETCH NEXT 2 ROWS ONLY

