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
DECLARE @CEnum Varchar -- String
SET     @CEnum = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:CEnum, :CEnum)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @CEnum Varchar -- String
SET     @CEnum = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:CEnum, :CEnum)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

