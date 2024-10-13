﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PR_1598_Insert_Enum_Table"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "PR_1598_Insert_Enum_Table"
(
	"Id"     Int  NOT NULL,
	"Name"   text     NULL,
	"Age"    Int      NULL,
	"Gender" text     NULL,

	CONSTRAINT "PK_PR_1598_Insert_Enum_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender Text(4) -- String
SET     @Gender = 'Male'

INSERT INTO "PR_1598_Insert_Enum_Table"
(
	"Id",
	"Name",
	"Age",
	"Gender"
)
VALUES
(
	:Id,
	:Name,
	:Age,
	:Gender
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Insert_Enum_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Insert_Enum_Table"
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Insert_Enum_Table" t
WHERE
	t."Id" = 2
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PR_1598_Insert_Enum_Table"

