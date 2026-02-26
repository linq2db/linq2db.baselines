-- PostgreSQL.18 PostgreSQL

UPDATE
	"Issue5351Table"
SET
	"Test" = NULL
WHERE
	"Issue5351Table"."Id" = 1

-- PostgreSQL.18 PostgreSQL

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 1
LIMIT 2

-- PostgreSQL.18 PostgreSQL

UPDATE
	"Issue5351Table"
SET
	"Test" = 'X'
WHERE
	"Issue5351Table"."Id" = 2

-- PostgreSQL.18 PostgreSQL

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 2
LIMIT 2

-- PostgreSQL.18 PostgreSQL

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Test" = 'X'

