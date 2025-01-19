BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'

MERGE INTO "TestInsertOrReplaceTable" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"FirstName" = CAST(@FirstName AS VARCHAR(27)),
		"LastName" = CAST(@LastName AS VARCHAR(8)),
		"MiddleName" = CAST(@MiddleName AS VARCHAR(15))
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
		CAST(@FirstName AS VARCHAR(27)),
		CAST(@LastName AS VARCHAR(8)),
		CAST(@MiddleName AS VARCHAR(15))
	)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT FIRST 1
	"x".ID,
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = @FirstName

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'

MERGE INTO "TestInsertOrReplaceTable" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"FirstName" = CAST(@FirstName AS VARCHAR(27)),
		"LastName" = CAST(@LastName AS VARCHAR(8))
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"FirstName",
		"LastName"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@FirstName AS VARCHAR(27)),
		CAST(@LastName AS VARCHAR(8))
	)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT FIRST 1
	"x".ID,
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = @FirstName

