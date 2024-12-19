BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InventoryResource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InventoryResource"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InventoryResource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InventoryResource"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InventoryResource')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InventoryResource"
			(
				"Id"     CHAR(16) CHARACTER SET OCTETS          NOT NULL,
				"Status" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_InventoryResource" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Guid
SET     @Id = X'BC7B663D0FDE43278F925D8CC3A11D11'
DECLARE @Status VarChar(4) -- String
SET     @Status = 'Used'

INSERT INTO "InventoryResource"
(
	"Id",
	"Status"
)
VALUES
(
	@Id,
	@Status
)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InventoryResource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InventoryResource"';
END

