-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "PR_1598_Insert_Null_Table"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Null_Table" t
WHERE
	t."Id" = 1
LIMIT 1

