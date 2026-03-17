-- SapHana.Odbc SapHanaOdbc
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id1 Int -- Int32
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
					"r_2"."Id" = ?
				LIMIT 1
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
					"r_4"."Id" = ?
				LIMIT 1
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

