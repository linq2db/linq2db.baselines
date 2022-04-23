BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"  Int NOT NULL,
	"Int" Int     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL

INSERT INTO "Src"
(
	"Id",
	"Int"
)
VALUES
(
	:Id,
	:Int_1
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2

INSERT INTO "Src"
(
	"Id",
	"Int"
)
VALUES
(
	:Id,
	:Int_1
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, -2)
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, NULL)
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, 2)
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" NOT IN (NULL, 2)
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" NOT IN (-1, 2)
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

