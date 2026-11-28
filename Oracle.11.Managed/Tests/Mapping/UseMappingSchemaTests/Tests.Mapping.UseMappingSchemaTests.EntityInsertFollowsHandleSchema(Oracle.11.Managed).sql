-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 5
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'a'

INSERT INTO "SourceSchemaRow"
(
	"Id",
	"Value",
	"Name"
)
VALUES
(
	:Id,
	:Value,
	:Name
)

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Value",
	t1."Name"
FROM
	"SourceSchemaRow" t1
WHERE
	ROWNUM <= 2

