-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"TableWithConverterValue" x
SET
	("Test1", "Test2", "NoConversion") = (
		SELECT
			o."Test1",
			o."Test2",
			x."NoConversion"
		FROM
			"TableWithConverterValue" o
		WHERE
			o."Id" = 2
	)
WHERE
	x."Id" = 1

