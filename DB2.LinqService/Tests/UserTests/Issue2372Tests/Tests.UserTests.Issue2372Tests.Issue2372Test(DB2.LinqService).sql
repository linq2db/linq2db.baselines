BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InventoryResource"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id VarBinary(16) -- Binary
SET     @Id = BX'3D667BBCDE0F27438F925D8CC3A11D11'
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

