-- Firebird.2.5 Firebird

UPDATE
	"OuterTable" "t1"
SET
	"Field1" = (
		SELECT FIRST 1
			"y"."Field4"
		FROM
			"InnerTable" "y"
		WHERE
			"t1"."Field2" = "y"."Field3"
		ORDER BY
			"y"."Field4"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2"
FROM
	"OuterTable" "t1"
ORDER BY
	"t1"."Id"

