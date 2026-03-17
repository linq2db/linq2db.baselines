-- Firebird.2.5 Firebird
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	"Value1" = (
		SELECT
			"r_2"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r_3"
				LEFT JOIN "InsertFromWithConstantsTable" "r_2" ON "r_2"."Id" = @id1
		WHERE
			"InsertFromWithConstantsTable"."Id" = "r_3"."Id"
	),
	"Value2" = (
		SELECT
			"r_4"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r_5"
				LEFT JOIN "InsertFromWithConstantsTable" "r_4" ON "r_4"."Id" = @id1
		WHERE
			"InsertFromWithConstantsTable"."Id" = "r_5"."Id"
	),
	"Value3" = 'string 1',
	"Value4" = 'string 1'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"InsertFromWithConstantsTable" "r_1"
				LEFT JOIN "InsertFromWithConstantsTable" "r" ON "r"."Id" = @id1
		WHERE
			"InsertFromWithConstantsTable"."Id" = "r_1"."Id"
	)

