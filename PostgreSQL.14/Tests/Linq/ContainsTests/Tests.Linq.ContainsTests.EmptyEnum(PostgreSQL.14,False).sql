BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"    Int         NOT NULL,
	"Int"   Int             NULL,
	"Enum"  text            NULL,
	"CEnum" VarChar(20)     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO','___Value2___')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	1 = 0

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

