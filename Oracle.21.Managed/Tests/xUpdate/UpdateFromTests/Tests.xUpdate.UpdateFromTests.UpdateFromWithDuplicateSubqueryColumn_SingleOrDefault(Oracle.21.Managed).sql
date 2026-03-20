-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable" r
SET
	"Value3" = 'string 1',
	"Value4" = 'string 1',
	("Value1", "Value2") = (
		SELECT
			r_1."Value3",
			r_1."Value3"
		FROM
			"InsertFromWithConstantsTable" r_1
		WHERE
			r_1."Id" = :id1
	)

