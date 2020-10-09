﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "PR_1598_Insert_Table"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL,
	"Age"  Int      NULL,

	CONSTRAINT "PK_PR_1598_Insert_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Integer -- Int32
SET     @Age = 14

INSERT INTO "PR_1598_Insert_Table"
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t."Id", 
	t."Name", 
	t."Age"
FROM
	"PR_1598_Insert_Table" t
WHERE
	t."Id" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Integer -- Int32
SET     @Age = 15

INSERT INTO "PR_1598_Insert_Table"
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t."Id", 
	t."Name", 
	t."Age"
FROM
	"PR_1598_Insert_Table" t
WHERE
	t."Id" = 2
LIMIT :take

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "PR_1598_Insert_Table"

