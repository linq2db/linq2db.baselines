﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE "PR_1598_Insert_Table"
(
	"Id"   Int          NOT NULL,
	"Name" VarChar(255)     NULL,
	"Age"  Int              NULL,

	CONSTRAINT "PK_PR_1598_Insert_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Age Int32
SET     @Age = 14

INSERT INTO "PR_1598_Insert_Table"
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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table" t
WHERE
	t."Id" = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Age Int32
SET     @Age = 15

INSERT INTO "PR_1598_Insert_Table"
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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table" t
WHERE
	t."Id" = 2
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Insert_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

