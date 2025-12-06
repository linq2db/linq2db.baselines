-- DB2 DB2.LUW DB2LUW
DECLARE @Uid Blob(16) -- Binary
SET     @Uid = BX'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Id BigInt(8) -- Int64
SET     @Id = 0

UPDATE
	"Issue3060Table" "t1"
SET
	"Uid" = @Uid
WHERE
	"t1"."Id" = @Id

