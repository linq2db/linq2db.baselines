-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 2

MERGE INTO "PR_1598_Insert_Table_Cache" t1
USING (SELECT :Id AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = :Name,
		"Age" = :Age
WHEN NOT MATCHED THEN
	INSERT
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

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table_Cache" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 2

MERGE INTO "PR_1598_Insert_Table_Cache" t1
USING (SELECT :Id AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = :Name,
		"Age" = :Age
WHEN NOT MATCHED THEN
	INSERT
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

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table_Cache" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

