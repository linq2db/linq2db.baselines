-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	("Value1", "Value2", "Value3", "Value4") = (
		SELECT
			r_2."Value3",
			r_2."Value3",
			'string 1',
			'string 1'
		FROM
			"InsertFromWithConstantsTable" r_3
				LEFT JOIN "InsertFromWithConstantsTable" r_2 ON r_2."Id" = :id1
		WHERE
			"InsertFromWithConstantsTable"."Id" = r_3."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"InsertFromWithConstantsTable" r_1
				LEFT JOIN "InsertFromWithConstantsTable" r ON r."Id" = :id1
		WHERE
			"InsertFromWithConstantsTable"."Id" = r_1."Id"
	)

