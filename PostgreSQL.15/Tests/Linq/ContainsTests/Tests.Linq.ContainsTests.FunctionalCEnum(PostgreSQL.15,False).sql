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
DECLARE @In Varchar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 Varchar(12) -- String
SET     @In_1 = '___Value4___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In, :In_1)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @In Varchar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 Varchar -- String
SET     @In_1 = NULL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In, :In_1)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @In Varchar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 Varchar(12) -- String
SET     @In_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In, :In_1)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NotIn Varchar -- String
SET     @NotIn = NULL
DECLARE @NotIn_1 Varchar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn_1)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NotIn Varchar(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 Varchar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn_1)
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

