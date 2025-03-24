﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Integer -- Int32
SET     @Age = 14

INSERT INTO "PR_1598_Update_Table"
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
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Name Text(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"PR_1598_Update_Table"."Id" = :Id

BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Age Integer -- Int32
SET     @Age = 22
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table"
SET
	"Age" = :Age
WHERE
	"PR_1598_Update_Table"."Id" = :Id

BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1
LIMIT 1

