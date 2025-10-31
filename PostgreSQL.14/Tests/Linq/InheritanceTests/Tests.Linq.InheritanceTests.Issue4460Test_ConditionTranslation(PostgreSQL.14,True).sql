-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
			THEN True
		ELSE e."Id" = 0
	END
ORDER BY
	e."Id"

