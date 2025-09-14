BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "FluentTemp"
			(
				ID         Int                                   NOT NULL,
				"Value"    VarChar(20) CHARACTER SET UNICODE_FSS,
				"LastName" VarChar(20) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	ID,
	"Value",
	"LastName"
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @Name VarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	"FluentTemp" "t"
SET
	"Value" = CAST(@Name AS VARCHAR(7)),
	"LastName" = CAST(@LastName AS VARCHAR(4))
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

