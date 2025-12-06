-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 15

INSERT INTO "PR_1598_SkipCustom_Table"
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

-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_SkipCustom_Table" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'Max'

INSERT INTO "PR_1598_SkipCustom_Table"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"PR_1598_SkipCustom_Table" t
WHERE
	t."Id" = 2 AND ROWNUM <= 1

