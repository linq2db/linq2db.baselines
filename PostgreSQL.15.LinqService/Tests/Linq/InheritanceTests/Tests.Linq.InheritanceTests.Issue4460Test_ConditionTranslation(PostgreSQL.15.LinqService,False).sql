BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Base"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Base"
(
	"Code"   text        NULL,
	"Id"     Int     NOT NULL,
	"Name"   text        NULL,
	"IsMale" Boolean     NULL,
	"Age"    Int         NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN e."Code" = 'Child2' THEN True
		ELSE False
	END,
	e."Code",
	e."Id",
	e."Name",
	e."Age",
	CASE
		WHEN e."Code" = 'Child' THEN True
		ELSE False
	END,
	e."IsMale",
	CASE
		WHEN e."Code" = 'BaseChild' THEN True
		ELSE False
	END
FROM
	"Base" e
WHERE
	CASE
		WHEN e."Code" = 'BaseChild' OR e."Code" = 'Child' OR e."Code" = 'Child2'
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
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Base"

