-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"CollatedTable" t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @CaseSensitive Text(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive Text(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO "CollatedTable"
(
	"Id",
	"CaseSensitive",
	"CaseInsensitive"
)
VALUES
(
	:Id,
	:CaseSensitive,
	:CaseInsensitive
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" ILIKE '%stString' ESCAPE '~'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" ILIKE '%stString' ESCAPE '~'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" ILIKE '%ststring' ESCAPE '~'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" ILIKE '%ststring' ESCAPE '~'

