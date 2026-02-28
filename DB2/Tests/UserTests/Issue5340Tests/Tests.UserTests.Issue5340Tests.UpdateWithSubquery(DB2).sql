-- DB2 DB2.LUW DB2LUW

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

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2"
FROM
	"OuterTable" "t1"
ORDER BY
	"t1"."Id"

