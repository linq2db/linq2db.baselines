BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestInsertOrReplaceTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TestInsertOrReplaceTable"
		(
			ID           Int          NOT NULL,
			"FirstName"  VarChar(255)     NULL,
			"LastName"   VarChar(255)     NULL,
			"MiddleName" VarChar(255)     NULL,

			CONSTRAINT "PK_TestInsertOrReplaceTable" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 0
DECLARE @FirstName Varchar2(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Varchar2(15) -- String
SET     @MiddleName = 'som middle name'

MERGE INTO "TestInsertOrReplaceTable" t1
USING (SELECT :ID AS ID FROM SYS.DUAL) s ON
(
	t1.ID = s.ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"FirstName" = :FirstName,
		"LastName" = :LastName,
		"MiddleName" = :MiddleName
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"FirstName",
		"LastName",
		"MiddleName"
	)
	VALUES
	(
		:ID,
		:FirstName,
		:LastName,
		:MiddleName
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	x.ID,
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."FirstName" = :FirstName AND x."FirstName" IS NOT NULL
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 0
DECLARE @FirstName Varchar2(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'

MERGE INTO "TestInsertOrReplaceTable" t1
USING (SELECT :ID AS ID FROM SYS.DUAL) s ON
(
	t1.ID = s.ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"FirstName" = :FirstName,
		"LastName" = :LastName
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"FirstName",
		"LastName"
	)
	VALUES
	(
		:ID,
		:FirstName,
		:LastName
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	x.ID,
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."FirstName" = :FirstName AND x."FirstName" IS NOT NULL
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestInsertOrReplaceTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

