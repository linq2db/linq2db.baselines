-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'

INSERT INTO "PR_1598_Insert_Table_Cache" AS t1
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)
ON CONFLICT ("Id") DO UPDATE SET
	"Name" = :Name

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table_Cache" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'

INSERT INTO "PR_1598_Insert_Table_Cache" AS t1
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)
ON CONFLICT ("Id") DO UPDATE SET
	"Name" = :Name

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table_Cache" t
WHERE
	t."Id" = 1
LIMIT 1

