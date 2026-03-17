-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Test Char -- String
SET     @Test = NULL

UPDATE
	"Issue5351Table"
SET
	"Test" = :Test
WHERE
	"Issue5351Table"."Id" = 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Test Char(1) -- String
SET     @Test = 'X'

UPDATE
	"Issue5351Table"
SET
	"Test" = :Test
WHERE
	"Issue5351Table"."Id" = 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 2
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Test Char(1) -- String
SET     @Test = 'X'

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Test" = :Test

