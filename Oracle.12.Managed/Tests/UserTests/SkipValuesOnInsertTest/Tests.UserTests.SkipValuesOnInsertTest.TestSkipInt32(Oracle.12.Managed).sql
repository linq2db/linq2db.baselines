-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Smith'

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertTable" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertTable" t
WHERE
	t."Id" = 2
FETCH NEXT 1 ROWS ONLY

