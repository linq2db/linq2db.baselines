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
			"r"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r"
		WHERE
			"r"."Id" = ?
	),
	"Value2" = (
		SELECT
			"r_1"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r_1"
		WHERE
			"r_1"."Id" = ?
	),
	"Value3" = 'string 1',
	"Value4" = 'string 1'

