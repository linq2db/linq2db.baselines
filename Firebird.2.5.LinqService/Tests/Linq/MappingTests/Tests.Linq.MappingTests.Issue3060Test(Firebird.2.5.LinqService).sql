BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Uid Binary(16)
SET     @Uid = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Id BigInt -- Int64
SET     @Id = 0

UPDATE
	"Issue3060Table" "t1"
SET
	"Uid" = CAST(@Uid AS Blob(16))
WHERE
	"t1"."Id" = @Id

