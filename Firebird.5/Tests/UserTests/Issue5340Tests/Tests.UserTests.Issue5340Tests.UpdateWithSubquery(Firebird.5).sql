-- Firebird.5 Firebird4

UPDATE
	"OuterTable"
SET
	"Field1" = (
		SELECT
			"t2"."Field4"
		FROM
			"OuterTable" "t3"
				LEFT JOIN LATERAL (
					SELECT
						"y"."Field4"
					FROM
						"InnerTable" "y"
					WHERE
						"t3"."Field2" = "y"."Field3"
					ORDER BY
						"y"."Field4"
					FETCH NEXT 1 ROWS ONLY
				) "t2" ON 1=1
		WHERE
			"OuterTable"."Id" = "t3"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"OuterTable" "t1"
		WHERE
			"OuterTable"."Id" = "t1"."Id"
	)

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2"
FROM
	"OuterTable" "t1"
ORDER BY
	"t1"."Id"

