-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 6
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'b'

MERGE INTO "SourceSchemaRow" t1
USING (SELECT :Id AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = :Value,
		"Name" = :Name
WHEN NOT MATCHED THEN
	INSERT
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

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value",
	t1."Name"
FROM
	"SourceSchemaRow" t1
ORDER BY
	t1."Id"

