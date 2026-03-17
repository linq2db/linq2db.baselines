-- PostgreSQL.13 PostgreSQL
DECLARE @Types -2147483630 -- Object
SET     @Types = {1}

UPDATE
	"Issue5310Table"
SET
	"Types" = :Types
WHERE
	"Issue5310Table"."Id" = 1
RETURNING
	"Issue5310Table"."Id",
	"Issue5310Table"."Types"

