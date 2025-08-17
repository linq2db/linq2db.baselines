BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DELETE FROM
	"CollatedTable" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" ILIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" ILIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" ILIKE 'testst%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" ILIKE 'testst%' ESCAPE '~'

