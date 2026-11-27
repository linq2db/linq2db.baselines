-- Firebird.3 Firebird3
UPDATE
	"ByteFieldUpdateTable" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + -1 AS SmallInt)

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"ByteFieldUpdateTable" "t1"
FETCH NEXT 2 ROWS ONLY

