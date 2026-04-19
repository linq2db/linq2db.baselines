-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"TableWithConverterValue"
SET
	"NoConversion" = "TableWithConverterValue"."NoConversion",
	("Test1", "Test2") = (
		SELECT
			o."Test1",
			o."Test2"
		FROM
			"TableWithConverterValue" o
		WHERE
			o."Id" = 2
	)
WHERE
	"TableWithConverterValue"."Id" = 1

