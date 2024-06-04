BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyGuidBinary')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyGuidBinary"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyGuidBinary')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ConcurrencyGuidBinary"
			(
				"Id"    Int                                    NOT NULL,
				"Stamp" CHAR(16) CHARACTER SET OCTETS,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ConcurrencyGuidBinary" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyGuidBinary"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Stamp Binary(16)
SET     @Stamp = X'F0A326230CA8A74D8918CC1F9281A489'
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

UPDATE
	"ConcurrencyGuidBinary" "obj"
SET
	"Stamp" = CAST(@Stamp AS CHAR(16) CHARACTER SET OCTETS),
	"Value" = CAST(@Value AS VARCHAR(7))
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp_1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Stamp Binary(16)
SET     @Stamp = X'744AFF2C77194444875C60D8F8D160DF'
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = X'F0A326230CA8A74D8918CC1F9281A489'

UPDATE
	"ConcurrencyGuidBinary" "obj"
SET
	"Stamp" = CAST(@Stamp AS CHAR(16) CHARACTER SET OCTETS),
	"Value" = CAST(@Value AS VARCHAR(7))
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp_1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Stamp Binary(16)
SET     @Stamp = X'0E4856710FD5AE4F91C77E8077E01A2C'
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = X'0D6048A921DE744F8AC29516B287076E'

UPDATE
	"ConcurrencyGuidBinary" "obj"
SET
	"Stamp" = CAST(@Stamp AS CHAR(16) CHARACTER SET OCTETS),
	"Value" = CAST(@Value AS VARCHAR(7))
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp_1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = X'A57339BD2343D84D9F4FDF9F93E2A627'

DELETE FROM
	"ConcurrencyGuidBinary" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = X'744AFF2C77194444875C60D8F8D160DF'

DELETE FROM
	"ConcurrencyGuidBinary" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyGuidBinary')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyGuidBinary"';
END

