BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp"
		(
			ID         Int         NOT NULL,
			"Value"    VarChar(20)     NULL,
			"LastName" VarChar(20)     NULL,

			CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @LastName Varchar2(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	ID,
	"Value",
	"LastName"
)
VALUES
(
	:ID,
	:Name,
	:LastName
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(7) -- String
SET     @Name = 'John II'
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'Dory'

UPDATE
	"FluentTemp" t
SET
	"Value" = :Name,
	"LastName" = :LastName
WHERE
	t.ID = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

