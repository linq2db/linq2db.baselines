﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Int32
SET     @Age = 2

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
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'Franki'
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
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" t1
SET
	"Name" = :Name
WHERE
	t1."Id" = :Id

BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Update_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

