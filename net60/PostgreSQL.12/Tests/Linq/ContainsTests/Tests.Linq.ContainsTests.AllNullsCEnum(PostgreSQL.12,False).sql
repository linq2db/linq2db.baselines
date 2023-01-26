BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"    Int  NOT NULL,
	"Int"   Int      NULL,
	"Enum"  text     NULL,
	"CEnum" Int      NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO',1)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (NULL, NULL)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (NULL, NULL)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

