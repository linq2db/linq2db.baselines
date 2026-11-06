-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 6
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'b'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"SourceSchemaRow" t
SET
	"Value" = :Value,
	"Name" = :Name
WHERE
	t."Id" = :Id

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value" as "Value_1",
	t1."Name"
FROM
	"SourceSchemaRow" t1
FETCH NEXT 2 ROWS ONLY

