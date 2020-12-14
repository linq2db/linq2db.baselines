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
		t1."FirstName" = :FirstName,
		t1."LastName" = :LastName,
		t1."MiddleName" = :MiddleName
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName_1 Varchar2(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	x.ID,
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."FirstName" = :FirstName_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 0
DECLARE @FirstName Varchar2(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Varchar2(12) -- String
SET     @MiddleName = 'updated name'

MERGE INTO "TestInsertOrReplaceTable" t1
USING (SELECT :ID AS ID FROM SYS.DUAL) s ON
(
	t1.ID = s.ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."FirstName" = :FirstName,
		t1."LastName" = :LastName,
		t1."MiddleName" = :MiddleName
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName_1 Varchar2(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	x.ID,
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."FirstName" = :FirstName_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "TestInsertOrReplaceTable"

