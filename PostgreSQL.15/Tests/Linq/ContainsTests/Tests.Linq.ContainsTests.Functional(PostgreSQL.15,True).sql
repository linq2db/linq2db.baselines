BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"    Int         NOT NULL,
	"Int"   Int             NULL,
	"Enum"  text            NULL,
	"CEnum" VarChar(20)     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, -2)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" IN (-1) OR s."Int" IS NULL)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, 2)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (2) AND s."Int" IS NOT NULL)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (-1, 2) OR s."Int" IS NULL)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

