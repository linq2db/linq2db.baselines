BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestInsertOrReplaceTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestInsertOrReplaceTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestInsertOrReplaceTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestInsertOrReplaceTable"
			(
				ID           Int                                    NOT NULL,
				"FirstName"  VarChar(255) CHARACTER SET UNICODE_FSS,
				"LastName"   VarChar(255) CHARACTER SET UNICODE_FSS,
				"MiddleName" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TestInsertOrReplaceTable" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
	"x"."FirstName" = @FirstName AND "x"."FirstName" IS NOT NULL
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(12) -- String
SET     @MiddleName = 'updated name'

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
		"MiddleName" = CAST(@MiddleName AS VARCHAR(12))
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
		CAST(@MiddleName AS VARCHAR(12))
	)

BeforeExecute
-- Firebird.5 Firebird4
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
	"x"."FirstName" = @FirstName AND "x"."FirstName" IS NOT NULL
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestInsertOrReplaceTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestInsertOrReplaceTable"';
END

