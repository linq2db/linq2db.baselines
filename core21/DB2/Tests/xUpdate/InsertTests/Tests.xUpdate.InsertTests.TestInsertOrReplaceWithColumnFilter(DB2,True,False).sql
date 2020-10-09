BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestInsertOrReplaceTable"
(
	ID           Int           NOT NULL,
	"FirstName"  NVarChar(255)     NULL,
	"LastName"   NVarChar(255)     NULL,
	"MiddleName" NVarChar(255)     NULL,

	CONSTRAINT "PK_TestInsertOrReplaceTable" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'

MERGE INTO "TestInsertOrReplaceTable" "t1"
USING (SELECT @ID AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."FirstName" = @FirstName,
		"t1"."LastName" = @LastName,
		"t1"."MiddleName" = @MiddleName
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
		@ID,
		@FirstName,
		@LastName,
		@MiddleName
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName_1 VarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'

SELECT 
	"x".ID, 
	"x"."FirstName", 
	"x"."LastName", 
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = @FirstName_1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(12) -- String
SET     @MiddleName = 'updated name'

MERGE INTO "TestInsertOrReplaceTable" "t1"
USING (SELECT @ID AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."FirstName" = @FirstName,
		"t1"."LastName" = @LastName,
		"t1"."MiddleName" = @MiddleName
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
		@ID,
		@FirstName,
		@LastName,
		@MiddleName
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName_1 VarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'

SELECT 
	"x".ID, 
	"x"."FirstName", 
	"x"."LastName", 
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = @FirstName_1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestInsertOrReplaceTable"

