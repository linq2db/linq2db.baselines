-- Firebird.2.5 Firebird

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + -1 AS SmallInt)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Field"
FROM
	"Issue4963Table" "t1"

