BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp"
		(
			ID     Int         NOT NULL,
			"Name" VarChar(20)     NULL,

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp"
(
	ID,
	"Name"
)
VALUES
(
	:ID,
	:Name
)

