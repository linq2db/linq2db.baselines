-- Firebird.2.5 Firebird
UPDATE
	"ByteFieldUpdateTable" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + -1 AS SmallInt)

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Field"
FROM
	"ByteFieldUpdateTable" "t1"

