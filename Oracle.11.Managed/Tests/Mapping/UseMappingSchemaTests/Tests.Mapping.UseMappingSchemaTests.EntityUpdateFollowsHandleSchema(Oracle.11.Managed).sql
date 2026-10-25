-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Value",
	t1."Name"
FROM
	"SourceSchemaRow" t1
WHERE
	ROWNUM <= 2

