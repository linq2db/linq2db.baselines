BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender Text(6) -- String
SET     @Gender = 'Female'

INSERT INTO "PR_1598_Update_Enum_Table"
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
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Update_Enum_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Name Text(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Gender Text(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table"
SET
	"Name" = :Name,
	"Age" = :Age,
	"Gender" = :Gender
WHERE
	"PR_1598_Update_Enum_Table"."Id" = :Id

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Update_Enum_Table" t
WHERE
	t."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Name Text(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"PR_1598_Update_Enum_Table"."Id" = :Id

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Update_Enum_Table" t
WHERE
	t."Id" = 1
LIMIT 1

