-- Firebird.3 Firebird3

UPDATE
	"OuterTable" "t1"
SET
	"Field1" = (
		SELECT
			"y"."Field4"
		FROM
			"InnerTable" "y"
		WHERE
			"t1"."Field2" = "y"."Field3"
		ORDER BY
			"y"."Field4"
		FETCH NEXT 1 ROWS ONLY
	)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2"
FROM
	"OuterTable" "t1"
ORDER BY
	"t1"."Id"

