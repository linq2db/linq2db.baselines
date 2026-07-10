-- PostgreSQL.15 PostgreSQL12

DELETE FROM
	"CollatedTable" t1

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" LIKE '%stSt%' ESCAPE '~'

-- PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" LIKE '%stSt%' ESCAPE '~'

-- PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" LIKE '%stst%' ESCAPE '~'

-- PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" LIKE '%stst%' ESCAPE '~'

