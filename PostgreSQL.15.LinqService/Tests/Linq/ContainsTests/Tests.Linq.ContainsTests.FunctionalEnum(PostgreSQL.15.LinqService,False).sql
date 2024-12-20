BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"    Int         NOT NULL,
	"Int"   Int             NULL,
	"Enum"  VarChar(5)      NULL,
	"CEnum" VarChar(20)     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int Integer -- Int32
SET     @Int = NULL
DECLARE @Enum Varchar -- String
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Enum Varchar(3) -- String
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
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', NULL)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" NOT IN (NULL, 'TWO')
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" NOT IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

