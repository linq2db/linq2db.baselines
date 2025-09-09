﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO "PR_1598_Update_Null_Table"
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Null_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Name Text(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"PR_1598_Update_Null_Table"."Id" = :Id

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Null_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Name Text(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table"
SET
	"Name" = :Name
WHERE
	"PR_1598_Update_Null_Table"."Id" = :Id

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Null_Table" t
WHERE
	t."Id" = 1
LIMIT 1

