﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"    Int     NOT NULL,
	"Int"   Int         NULL,
	"Enum"  text        NULL,
	"CEnum" VarChar     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @CEnum Varchar -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 Varchar -- String
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:CEnum, :CEnum_1)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @CEnum Varchar -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 Varchar -- String
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:CEnum, :CEnum_1)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

