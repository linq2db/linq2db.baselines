﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"CollatedTable" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" LIKE '%stst%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" LIKE '%stst%' ESCAPE '~'

