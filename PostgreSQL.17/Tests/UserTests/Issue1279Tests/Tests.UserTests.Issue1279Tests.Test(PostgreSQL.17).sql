-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @CharFld Char -- String
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
(
	"CharFld"
)
VALUES
(
	:CharFld
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."CharFld"
FROM
	"Issue1279Table" t1
LIMIT 1

