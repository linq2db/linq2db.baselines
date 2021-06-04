﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"CollatedTable" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
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
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseSensitive" LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"CollatedTable" r
WHERE
	r."CaseInsensitive" LIKE 'testst%' ESCAPE '~'

