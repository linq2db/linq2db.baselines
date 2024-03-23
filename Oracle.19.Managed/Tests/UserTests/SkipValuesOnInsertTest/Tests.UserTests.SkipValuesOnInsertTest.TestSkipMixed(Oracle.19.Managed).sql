BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Mixed_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "PR_1598_Mixed_Table"
		(
			"Id"   Int          NOT NULL,
			"Name" VarChar(255)     NULL,
			"Age"  Int              NULL,

			CONSTRAINT "PK_PR_1598_Mixed_Table" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Mixed_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

