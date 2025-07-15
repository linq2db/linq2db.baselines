BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO "PR_1598_Insert_Table_Cache" AS t1
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
ON CONFLICT ("Id") DO UPDATE SET
	"Name" = :Name,
	"Age" = :Age

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table_Cache" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO "PR_1598_Insert_Table_Cache" AS t1
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
ON CONFLICT ("Id") DO UPDATE SET
	"Name" = :Name,
	"Age" = :Age

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table_Cache" t
WHERE
	t."Id" = 1
LIMIT 1

