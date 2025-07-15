BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Code Text(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'Jane'

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name"
)
VALUES
(
	:Code,
	:Id,
	:Name
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Code Text(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Age"
)
VALUES
(
	:Code,
	:Id,
	:Age
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	e."Code",
	e."Id",
	e."Age",
	e."Name"
FROM
	"Base" e
WHERE
	e."Code" <> 'Child' OR e."Code" IS NULL

