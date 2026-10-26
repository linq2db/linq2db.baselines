-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value" as "Value_1",
	t1."Name"
FROM
	"SourceSchemaRow" t1
FETCH NEXT 2 ROWS ONLY

