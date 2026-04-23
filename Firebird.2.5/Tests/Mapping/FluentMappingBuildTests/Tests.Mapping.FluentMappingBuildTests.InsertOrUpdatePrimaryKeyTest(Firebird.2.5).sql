-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

-- Firebird.2.5 Firebird

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

-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird

MERGE INTO "FluentTemp" "t1"
USING (SELECT 1 AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		ID = "t1".ID,
		"Name" = "t1"."Name"
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Name"
	)
	VALUES
	(
		1,
		'John II'
	)

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

