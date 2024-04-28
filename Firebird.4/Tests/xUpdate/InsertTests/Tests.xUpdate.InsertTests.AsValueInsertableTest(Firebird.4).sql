BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestInsertOrReplaceTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestInsertOrReplaceTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 123
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO "TestInsertOrReplaceTable"
(
	ID,
	"FirstName"
)
VALUES
(
	CAST(@ID AS Int),
	CAST(@FirstName AS VARCHAR(4))
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x".ID = 123 AND "x"."FirstName" = 'John'

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestInsertOrReplaceTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestInsertOrReplaceTable"';
END

