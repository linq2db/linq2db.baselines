-- PostgreSQL.9.3 PostgreSQL
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnInsertCache"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"SkipOnInsertCache"."Id" = :Id

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO "SkipOnInsertCache"
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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertCache" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnInsertCache"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"SkipOnInsertCache"."Id" = :Id

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertCache" t
WHERE
	t."Id" = 1
LIMIT 1

