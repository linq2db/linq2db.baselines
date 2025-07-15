BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'

INSERT INTO "PR_1598_Insert_Table_Cache"
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

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table_Cache" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Insert_Table_Cache" t1
SET
	"Name" = :Name
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table_Cache" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

