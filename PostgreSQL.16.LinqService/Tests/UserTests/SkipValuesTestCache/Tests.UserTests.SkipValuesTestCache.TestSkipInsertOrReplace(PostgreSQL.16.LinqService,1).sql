BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PR_1598_Insert_Table_Cache"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "PR_1598_Insert_Table_Cache"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL,
	"Age"  Int      NULL,

	CONSTRAINT "PK_PR_1598_Insert_Table_Cache" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PR_1598_Insert_Table_Cache"

