BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Insert_Enum_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "PR_1598_Insert_Enum_Table"
		(
			"Id"     Int          NOT NULL,
			"Name"   VarChar(255)     NULL,
			"Age"    Int              NULL,
			"Gender" VarChar(6)       NULL,

			CONSTRAINT "PK_PR_1598_Insert_Enum_Table" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'Max'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Gender Varchar2(4) -- String
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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Insert_Enum_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age Int32
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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"PR_1598_Insert_Enum_Table" t
WHERE
	t."Id" = 2
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Insert_Enum_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

