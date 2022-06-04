﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE "PR_1598_Update_Fluent_Table"
(
	"Id"   Int          NOT NULL,
	"Name" VarChar(255)     NULL,
	"Age"  Int              NULL,

	CONSTRAINT "PK_PR_1598_Update_Fluent_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2 -- String
SET     @Name = NULL
DECLARE @Age Int32
SET     @Age = 2

INSERT INTO "PR_1598_Update_Fluent_Table"
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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Fluent_Table" t
WHERE
	t."Id" = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Int32
SET     @Age = 18
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"PR_1598_Update_Fluent_Table"."Name" = :Name,
	"PR_1598_Update_Fluent_Table"."Age" = :Age
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = :Id

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Fluent_Table" t
WHERE
	t."Id" = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"PR_1598_Update_Fluent_Table"."Name" = :Name
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = :Id

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Fluent_Table" t
WHERE
	t."Id" = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Update_Fluent_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

