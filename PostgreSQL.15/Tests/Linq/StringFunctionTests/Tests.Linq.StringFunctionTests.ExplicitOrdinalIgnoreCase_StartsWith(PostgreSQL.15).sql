﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

DELETE FROM
	"CollatedTable" t1

BeforeExecute
--  PostgreSQL.15 PostgreSQL
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
--  PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" ILIKE 'TestSt%' ESCAPE '~'

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" ILIKE 'TestSt%' ESCAPE '~'

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" ILIKE 'testst%' ESCAPE '~'

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" ILIKE 'testst%' ESCAPE '~'

