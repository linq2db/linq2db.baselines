-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Int32
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

-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Null_Table" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Int32
SET     @Age = 2
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table" t1
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	t1."Id" = :Id

-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Null_Table" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table" t1
SET
	"Name" = :Name
WHERE
	t1."Id" = :Id

-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Null_Table" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

