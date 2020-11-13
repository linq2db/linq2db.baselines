BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "PR_1598_Mixed_Table"
(
	"Id"   Int          NOT NULL,
	"Name" VarChar(255)     NULL,
	"Age"  Int              NULL,

	CONSTRAINT "PK_PR_1598_Mixed_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Mixed_Table" t
WHERE
	t."Id" = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Mixed_Table"
SET
	"PR_1598_Mixed_Table"."Age" = :Age
WHERE
	"PR_1598_Mixed_Table"."Id" = :Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Mixed_Table" t
WHERE
	t."Id" = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Mixed_Table" t
WHERE
	t."Id" = 2
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Int32
SET     @Age = 25
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	"PR_1598_Mixed_Table"
SET
	"PR_1598_Mixed_Table"."Name" = :Name,
	"PR_1598_Mixed_Table"."Age" = :Age
WHERE
	"PR_1598_Mixed_Table"."Id" = :Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Mixed_Table" t
WHERE
	t."Id" = 2
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "PR_1598_Mixed_Table"

