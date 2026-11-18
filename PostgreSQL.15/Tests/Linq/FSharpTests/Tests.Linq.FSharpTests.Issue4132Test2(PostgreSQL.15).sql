-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
UPDATE
	"Issue4132Table"
SET
	"Text" = 'updated recently'
WHERE
	"Issue4132Table"."Number" = 1

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Number",
	r."Text"
FROM
	"Issue4132Table" r
WHERE
	r."Id" = 1
LIMIT 2

