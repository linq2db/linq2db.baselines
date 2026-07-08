-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"CollatedTable" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" LIKE '%stString' ESCAPE '~'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" LIKE '%stString' ESCAPE '~'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" LIKE '%ststring' ESCAPE '~'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" LIKE '%ststring' ESCAPE '~'

