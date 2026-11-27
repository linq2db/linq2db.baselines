-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2 -- String
SET     @Name = NULL

INSERT INTO "SkipOnInsertFluent"
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
	"SkipOnInsertFluent" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

