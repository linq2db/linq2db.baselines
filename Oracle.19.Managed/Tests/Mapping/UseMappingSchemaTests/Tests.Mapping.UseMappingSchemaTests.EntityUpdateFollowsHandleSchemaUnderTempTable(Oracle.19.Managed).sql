-- Oracle.19.Managed Oracle.Managed Oracle12
CREATE TABLE "SourceSchemaRowTemp"
(
	"Id"    Int          NOT NULL,
	"Value" Int          NOT NULL,
	"Name"  VarChar(255)     NULL,

	CONSTRAINT "PK_SourceSchemaRowTemp" PRIMARY KEY ("Id", "Value")
)

-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SourceSchemaRowTemp"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value" as "Value_1",
	t1."Name"
FROM
	"SourceSchemaRow" t1
FETCH NEXT 2 ROWS ONLY

