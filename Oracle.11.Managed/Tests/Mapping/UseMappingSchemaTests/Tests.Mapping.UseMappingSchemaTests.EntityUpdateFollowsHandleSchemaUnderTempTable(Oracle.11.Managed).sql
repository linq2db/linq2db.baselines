-- Oracle.11.Managed Oracle11
BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "SourceSchemaRowTemp"
		(
			"Id"    Int          NOT NULL,
			"Value" Int          NOT NULL,
			"Name"  VarChar(255)     NULL,

			CONSTRAINT "PK_SourceSchemaRowTemp" PRIMARY KEY ("Id", "Value")
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

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
BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'TRUNCATE TABLE "SourceSchemaRowTemp"';
	EXCEPTION
		WHEN OTHERS THEN
			NULL;
	END;
	EXECUTE IMMEDIATE 'DROP TABLE "SourceSchemaRowTemp"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Value",
	t1."Name"
FROM
	"SourceSchemaRow" t1
WHERE
	ROWNUM <= 2

