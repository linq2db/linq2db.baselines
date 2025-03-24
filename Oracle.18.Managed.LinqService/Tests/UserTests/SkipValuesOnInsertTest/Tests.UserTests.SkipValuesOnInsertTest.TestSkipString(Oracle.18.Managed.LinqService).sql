﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12
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
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12
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
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_Insert_Table" t
WHERE
	t."Id" = 2
FETCH NEXT 1 ROWS ONLY

