BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3060Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3060Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3060Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3060Table"
			(
				"Id"  BigInt                           NOT NULL,
				"Uid" VARCHAR(16) CHARACTER SET OCTETS,

				CONSTRAINT "PK_Issue3060Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
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

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3060Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3060Table"';
END

