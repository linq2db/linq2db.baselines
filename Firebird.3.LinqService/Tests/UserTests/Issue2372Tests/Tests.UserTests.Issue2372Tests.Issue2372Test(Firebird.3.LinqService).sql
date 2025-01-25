BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InventoryResource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InventoryResource"';
END

BeforeExecute
-- Firebird.3 Firebird3
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

