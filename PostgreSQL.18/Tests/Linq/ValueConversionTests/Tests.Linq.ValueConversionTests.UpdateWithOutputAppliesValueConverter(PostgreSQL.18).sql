-- PostgreSQL.18 PostgreSQL12
DECLARE @Types -2147483630 -- Object
SET     @Types = {1}

UPDATE
	"ConvertedArrayColumnTable"
SET
	"Types" = :Types
WHERE
	"ConvertedArrayColumnTable"."Id" = 1
RETURNING
	NEW."Id",
	NEW."Types"

