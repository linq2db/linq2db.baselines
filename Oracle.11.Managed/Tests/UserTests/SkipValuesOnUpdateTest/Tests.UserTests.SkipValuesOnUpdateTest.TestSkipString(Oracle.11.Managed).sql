BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Update_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "PR_1598_Update_Table"
		(
			"Id"   Int          NOT NULL,
			"Name" VarChar(255)     NULL,
			"Age"  Int              NULL,

			CONSTRAINT "PK_PR_1598_Update_Table" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Int32
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
-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Int32
SET     @Age = 15
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" t1
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Age Int32
SET     @Age = 22
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" t1
SET
	"Age" = :Age
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Update_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

