-- SapHana.Native SapHana
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id1_1 Integer -- Int32
SET     @id1_1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	"Value1" = (
		SELECT
			"r"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r"
		WHERE
			"r"."Id" = :"id1"
		LIMIT 1
	),
	"Value2" = (
		SELECT
			"r_1"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r_1"
		WHERE
			"r_1"."Id" = :"id1_1"
		LIMIT 1
	),
	"Value3" = 'string 1',
	"Value4" = 'string 1'

