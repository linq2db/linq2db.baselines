BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Base"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Base"
(
	"Code"   text        NULL,
	"Id"     Int     NOT NULL,
	"Name"   text        NULL,
	"IsMale" Boolean     NULL,
	"Age"    Int         NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Code Text(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Boolean
SET     @IsMale = False

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"IsMale"
)
VALUES
(
	:Code,
	:Id,
	:Name,
	:IsMale
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Code Text(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Code,
	:Id,
	:Name,
	:Age
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	e."Code",
	e."Id",
	e."Name",
	e."IsMale",
	e."Age"
FROM
	"Base" e
WHERE
	CASE
		WHEN e."Code" = 'Child2' OR e."Code" = 'Child' OR e."Code" = 'BaseChild'
			THEN CASE
			WHEN e."Id" <> 0 THEN True
			ELSE False
		END
		WHEN e."Id" <> 0 THEN True
		ELSE False
	END
ORDER BY
	e."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Base"

