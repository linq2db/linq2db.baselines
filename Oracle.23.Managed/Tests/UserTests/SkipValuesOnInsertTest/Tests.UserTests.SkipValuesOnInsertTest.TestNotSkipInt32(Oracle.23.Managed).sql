-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Int32
SET     @Age = 55

INSERT INTO "SkipOnInsertTable"
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertTable" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Int32
SET     @Age = 50

INSERT INTO "SkipOnInsertTable"
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertTable" t
WHERE
	t."Id" = 2
FETCH NEXT 1 ROWS ONLY

