-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "SkipOnInsertNulls"
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
	"SkipOnInsertNulls" t
WHERE
	t."Id" = 1 AND ROWNUM <= 1

