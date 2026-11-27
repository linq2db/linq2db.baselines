-- PostgreSQL.9.2 PostgreSQL
DECLARE @Types -2147483630 -- Object
SET     @Types = {1}

UPDATE
	"ConvertedArrayColumnTable"
SET
	"Types" = :Types
WHERE
	"ConvertedArrayColumnTable"."Id" = 1
RETURNING
	"ConvertedArrayColumnTable"."Id",
	"ConvertedArrayColumnTable"."Types"

