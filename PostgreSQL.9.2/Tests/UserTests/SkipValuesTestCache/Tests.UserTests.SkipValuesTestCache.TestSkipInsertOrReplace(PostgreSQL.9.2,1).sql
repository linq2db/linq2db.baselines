-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnInsertCache"
SET
	"Name" = :Name
WHERE
	"SkipOnInsertCache"."Id" = :Id

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'

INSERT INTO "SkipOnInsertCache"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertCache" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnInsertCache"
SET
	"Name" = :Name
WHERE
	"SkipOnInsertCache"."Id" = :Id

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertCache" t
WHERE
	t."Id" = 1
LIMIT 1

