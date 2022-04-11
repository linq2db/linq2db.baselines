BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TestInsertOrReplaceTable"
(
	ID           Int          NOT NULL,
	"FirstName"  VarChar(255)     NULL,
	"LastName"   VarChar(255)     NULL,
	"MiddleName" VarChar(255)     NULL,

	CONSTRAINT "PK_TestInsertOrReplaceTable" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 123
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'John'

INSERT INTO "TestInsertOrReplaceTable"
(
	ID,
	"FirstName"
)
VALUES
(
	:ID,
	:FirstName
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x.ID = 123 AND x."FirstName" = 'John'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestInsertOrReplaceTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

