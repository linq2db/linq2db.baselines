-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp_Merge')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp_Merge"';
END

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp_Merge')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "FluentTemp_Merge"
			(
				ID     Int                                   NOT NULL,
				"Name" VarChar(20) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_FluentTemp_Merge" PRIMARY KEY (ID)
			)
		';
END

-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp_Merge"
(
	ID,
	"Name"
)
VALUES
(
	@ID,
	@Name
)

-- Firebird.2.5 Firebird

MERGE INTO "FluentTemp_Merge" "Target"
USING (
	SELECT 1 AS ID, CAST('John II' AS VARCHAR(7)) AS "Name" FROM rdb$database) "Source"
(
	ID,
	"Name"
)
ON ("Target".ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Name"
)
VALUES
(
	"Source".ID,
	"Source"."Name"
)

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp_Merge')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp_Merge"';
END

