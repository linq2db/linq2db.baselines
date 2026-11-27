-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'

INSERT INTO "SkipOnInsertCache"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertCache" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"SkipOnInsertCache" t1
SET
	"Name" = :Name
WHERE
	t1."Id" = :Id

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertCache" t
WHERE
	t."Id" = 1
FETCH NEXT 1 ROWS ONLY

