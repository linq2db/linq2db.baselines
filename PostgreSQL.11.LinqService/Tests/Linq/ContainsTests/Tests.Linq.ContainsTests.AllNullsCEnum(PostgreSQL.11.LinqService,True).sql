BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"    Int         NOT NULL,
	"Int"   Int             NULL,
	"Enum"  text            NULL,
	"CEnum" VarChar(20)     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int Integer -- Int32
SET     @Int = NULL
DECLARE @Enum Text -- String
SET     @Enum = NULL
DECLARE @CEnum Varchar -- String
SET     @CEnum = NULL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	:Id,
	:Int,
	:Enum,
	:CEnum
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Enum Text(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum Varchar(12) -- String
SET     @CEnum = '___Value2___'

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	:Id,
	:Int,
	:Enum,
	:CEnum
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IS NULL

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IS NOT NULL

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

