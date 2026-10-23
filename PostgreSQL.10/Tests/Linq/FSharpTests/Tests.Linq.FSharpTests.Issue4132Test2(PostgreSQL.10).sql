-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "Issue4132Table"
(
	"Id",
	"Number",
	"Text"
)
VALUES
(
	1,
	1,
	'before'
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
UPDATE
	"Issue4132Table"
SET
	"Text" = 'updated recently'
WHERE
	"Issue4132Table"."Number" = 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	r."Number",
	r."Text"
FROM
	"Issue4132Table" r
WHERE
	r."Id" = 1
LIMIT 2

