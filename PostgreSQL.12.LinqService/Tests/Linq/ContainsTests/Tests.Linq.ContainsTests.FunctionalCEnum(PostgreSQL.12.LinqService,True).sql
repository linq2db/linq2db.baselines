BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"    Int         NOT NULL,
	"Int"   Int             NULL,
	"Enum"  text            NULL,
	"CEnum" VarChar(20)     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @CEnum Varchar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 Varchar(12) -- String
SET     @CEnum_1 = '___Value4___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:CEnum, :CEnum_1)
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @CEnum Varchar(12) -- String
SET     @CEnum = '___Value3___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" IN (:CEnum) OR s."CEnum" IS NULL)
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @CEnum Varchar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 Varchar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:CEnum, :CEnum_1)
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @CEnum Varchar(12) -- String
SET     @CEnum = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" NOT IN (:CEnum) AND s."CEnum" IS NOT NULL)
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @CEnum Varchar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 Varchar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" NOT IN (:CEnum, :CEnum_1) OR s."CEnum" IS NULL)
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

