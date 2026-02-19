-- Firebird.5 Firebird4

UPDATE
	"OuterTable" "t1"
SET
	"Field1" = (
		SELECT
			"b_1"."Field4"
		FROM
			(
				SELECT
					1 as "c1"
				FROM rdb$database
			) "t2"
				CROSS JOIN LATERAL (
					SELECT
						"b"."Field4"
					FROM
						"InnerTable" "b"
					WHERE
						"t1"."Field2" = "b"."Field3"
					ORDER BY
						"b"."Field4"
					FETCH NEXT 1 ROWS ONLY
				) "b_1"
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

