-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Smith'

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertTable" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertTable" t
WHERE
	t."Id" = 2
LIMIT 1

