-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 15

INSERT INTO "SkipCustomValuesTable"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Id,
	:Name,
	:Age
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipCustomValuesTable" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(3) -- String
SET     @Name = 'Max'

INSERT INTO "SkipCustomValuesTable"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipCustomValuesTable" t
WHERE
	t."Id" = 2
LIMIT 1

