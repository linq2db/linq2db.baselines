-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

