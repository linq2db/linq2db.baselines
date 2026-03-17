-- Firebird.4 Firebird4
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	"Value1" = (
		SELECT
			(
				SELECT
					"r_2"."Value3"
				FROM
					"InsertFromWithConstantsTable" "r_2"
				WHERE
					"r_2"."Id" = @id1
				FETCH NEXT 1 ROWS ONLY
			)
		FROM
			"InsertFromWithConstantsTable" "r_1"
		WHERE
			"InsertFromWithConstantsTable"."Id" = "r_1"."Id"
	),
	"Value2" = (
		SELECT
			(
				SELECT
					"r_4"."Value3"
				FROM
					"InsertFromWithConstantsTable" "r_4"
				WHERE
					"r_4"."Id" = @id1
				FETCH NEXT 1 ROWS ONLY
			)
		FROM
			"InsertFromWithConstantsTable" "r_3"
		WHERE
			"InsertFromWithConstantsTable"."Id" = "r_3"."Id"
	),
	"Value3" = 'string 1',
	"Value4" = 'string 1'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"InsertFromWithConstantsTable" "r"
		WHERE
			"InsertFromWithConstantsTable"."Id" = "r"."Id"
	)

