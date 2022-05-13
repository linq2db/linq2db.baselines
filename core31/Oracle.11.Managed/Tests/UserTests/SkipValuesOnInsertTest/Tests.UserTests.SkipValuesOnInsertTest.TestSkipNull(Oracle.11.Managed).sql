﻿BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "PR_1598_Insert_Null_Table"
(
	"Id"   Int          NOT NULL,
	"Name" VarChar(255)     NULL,
	"Age"  Int              NULL,

	CONSTRAINT "PK_PR_1598_Insert_Null_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
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

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Null_Table" t
WHERE
	t."Id" = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PR_1598_Insert_Null_Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

