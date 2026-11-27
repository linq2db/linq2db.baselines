-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO "SkipOnUpdateNulls"
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnUpdateNulls" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Name Text(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnUpdateNulls"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"SkipOnUpdateNulls"."Id" = :Id

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnUpdateNulls" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Name Text(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnUpdateNulls"
SET
	"Name" = :Name
WHERE
	"SkipOnUpdateNulls"."Id" = :Id

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnUpdateNulls" t
WHERE
	t."Id" = 1
LIMIT 1

