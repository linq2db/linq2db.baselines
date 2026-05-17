-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Int32
SET     @Age = 20

INSERT INTO "PR_1598_Mixed_Table"
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

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Mixed_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Mixed_Table" t1
SET
	"Age" = :Age
WHERE
	t1."Id" = :Id

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Mixed_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Age Int32
SET     @Age = 25

INSERT INTO "PR_1598_Mixed_Table"
(
	"Id",
	"Age"
)
VALUES
(
	:Id,
	:Age
)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Mixed_Table" t
WHERE
	t."Id" = 2
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Int32
SET     @Age = 25
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	"PR_1598_Mixed_Table" t1
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	t1."Id" = :Id

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Mixed_Table" t
WHERE
	t."Id" = 2
FETCH NEXT 1 ROWS ONLY

