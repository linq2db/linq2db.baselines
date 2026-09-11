-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	"Value3" = 'string 1',
	"Value4" = 'string 1',
	("Value1", "Value2") = (
		SELECT
			r."Value3",
			r."Value3"
		FROM
			"InsertFromWithConstantsTable" r
		WHERE
			r."Id" = :id1
	)

