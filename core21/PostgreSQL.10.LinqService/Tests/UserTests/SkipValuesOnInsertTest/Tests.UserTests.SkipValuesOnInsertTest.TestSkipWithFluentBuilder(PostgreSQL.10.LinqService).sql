BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "PR_1598_Insert_Fluent_Table"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL,
	"Age"  Int      NULL,

	CONSTRAINT "PK_PR_1598_Insert_Fluent_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text -- String
SET     @Name = NULL

INSERT INTO "PR_1598_Insert_Fluent_Table"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Fluent_Table" t
WHERE
	t."Id" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "PR_1598_Insert_Fluent_Table"

