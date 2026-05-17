-- PostgreSQL.18 PostgreSQL
DECLARE @Types -2147483630 -- Object
SET     @Types = {1}

UPDATE
	"Issue5310Table"
SET
	"Types" = :Types
WHERE
	"Issue5310Table"."Id" = 1
RETURNING
	NEW."Id",
	NEW."Types"

