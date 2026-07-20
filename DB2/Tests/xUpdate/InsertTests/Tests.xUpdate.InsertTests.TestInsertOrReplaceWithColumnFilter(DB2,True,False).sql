-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @FirstName_1 VarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @LastName_1 VarChar(8) -- String
SET     @LastName_1 = 'whatever'
DECLARE @MiddleName_1 VarChar(15) -- String
SET     @MiddleName_1 = 'som middle name'

MERGE INTO "TestInsertOrReplaceTable" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"FirstName" = CAST(@FirstName AS NVarChar(27)),
		"LastName" = CAST(@LastName AS NVarChar(8)),
		"MiddleName" = CAST(@MiddleName AS NVarChar(15))
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
		CAST(@ID AS Int),
		CAST(@FirstName_1 AS NVarChar(27)),
		CAST(@LastName_1 AS NVarChar(8)),
		CAST(@MiddleName_1 AS NVarChar(15))
	)

-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	"x".ID,
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = @FirstName
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @FirstName_1 VarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @LastName_1 VarChar(8) -- String
SET     @LastName_1 = 'whatever'
DECLARE @MiddleName_1 VarChar(12) -- String
SET     @MiddleName_1 = 'updated name'

MERGE INTO "TestInsertOrReplaceTable" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"FirstName" = CAST(@FirstName AS NVarChar(27)),
		"LastName" = CAST(@LastName AS NVarChar(8)),
		"MiddleName" = CAST(@MiddleName AS NVarChar(12))
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
		CAST(@ID AS Int),
		CAST(@FirstName_1 AS NVarChar(27)),
		CAST(@LastName_1 AS NVarChar(8)),
		CAST(@MiddleName_1 AS NVarChar(12))
	)

-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	"x".ID,
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = @FirstName
FETCH NEXT 1 ROWS ONLY

