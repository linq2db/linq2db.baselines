-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO "SkipOnUpdateTable"
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnUpdateTable" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.15 PostgreSQL12
DECLARE @Name Text(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnUpdateTable"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"SkipOnUpdateTable"."Id" = :Id

-- PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnUpdateTable" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.15 PostgreSQL12
DECLARE @Name Text(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnUpdateTable"
SET
	"Name" = :Name
WHERE
	"SkipOnUpdateTable"."Id" = :Id

-- PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnUpdateTable" t
WHERE
	t."Id" = 1
LIMIT 1

