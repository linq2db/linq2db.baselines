BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "FluentTemp"
			(
				ID     Int                                   NOT NULL,
				"Name" VarChar(20) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp"
(
	ID,
	"Name"
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

MERGE INTO "FluentTemp" "Target"
USING (
	SELECT 1 AS "source_ID", CAST('John II' AS VARCHAR(7)) AS "source_Name" FROM rdb$database) "Source"
(
	"source_ID",
	"source_Name"
)
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."source_Name"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Name"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Name"
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

