﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO "PR_1598_Update_Fluent_Table"
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
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Fluent_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Name Text(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer -- Int32
SET     @Age = 18
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = :Id

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Fluent_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Name Text(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"Name" = :Name
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = :Id

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Fluent_Table" t
WHERE
	t."Id" = 1
LIMIT 1

