﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestInsertOrReplaceTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestInsertOrReplaceTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
USING (SELECT Cast(@ID as Int) AS ID FROM rdb$database) "s" ON
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
		Cast(@ID as Int),
		@FirstName,
		@LastName,
		@MiddleName
	)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT FIRST @take
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
USING (SELECT Cast(@ID as Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."FirstName" = @FirstName,
		"t1"."LastName" = @LastName
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"FirstName",
		"LastName"
	)
	VALUES
	(
		Cast(@ID as Int),
		@FirstName,
		@LastName
	)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT FIRST @take
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

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestInsertOrReplaceTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestInsertOrReplaceTable"';
END

