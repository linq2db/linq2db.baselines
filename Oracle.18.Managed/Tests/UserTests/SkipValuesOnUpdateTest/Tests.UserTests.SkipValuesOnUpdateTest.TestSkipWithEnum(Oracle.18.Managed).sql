-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'Max'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Gender Varchar2(6) -- String
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

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Update_Enum_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Int32
SET     @Age = 2
DECLARE @Gender Varchar2(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table" t1
SET
	"Name" = :Name,
	"Age" = :Age,
	"Gender" = :Gender
WHERE
	t1."Id" = :Id

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Update_Enum_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table" t1
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	t1."Id" = :Id

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Update_Enum_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

