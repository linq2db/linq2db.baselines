BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ConcurrencyGuidBinary"
		(
			"Id"    Int           NOT NULL,
			"Stamp" Binary(16)        NULL,
			"Value" NVarChar(255)     NULL,

			CONSTRAINT "PK_ConcurrencyGuidBinary" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = BX'3D667BBCDE0F27438F925D8CC3A11D11'
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
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = BX'DBEEED78AC61EA459E769ECE7B6E6690'
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp_1 VarBinary(16) -- Binary
SET     @Stamp_1 = BX'3D667BBCDE0F27438F925D8CC3A11D11'

UPDATE
	"ConcurrencyGuidBinary" "obj"
SET
	"Stamp" = CAST(@Stamp AS Binary(16)),
	"Value" = CAST(@Value AS NVarChar(7))
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = BX'56EE8D76C3979F498291FBFA8073BD22'
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp_1 VarBinary(16) -- Binary
SET     @Stamp_1 = BX'DBEEED78AC61EA459E769ECE7B6E6690'

UPDATE
	"ConcurrencyGuidBinary" "obj"
SET
	"Stamp" = CAST(@Stamp AS Binary(16)),
	"Value" = CAST(@Value AS NVarChar(7))
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = BX'0B1CA77110F74C459C2CD65732F657DA'
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp_1 VarBinary(16) -- Binary
SET     @Stamp_1 = BX'0D6048A921DE744F8AC29516B287076E'

UPDATE
	"ConcurrencyGuidBinary" "obj"
SET
	"Stamp" = CAST(@Stamp AS Binary(16)),
	"Value" = CAST(@Value AS NVarChar(7))
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = BX'A57339BD2343D84D9F4FDF9F93E2A627'

DELETE FROM
	"ConcurrencyGuidBinary" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = BX'56EE8D76C3979F498291FBFA8073BD22'

DELETE FROM
	"ConcurrencyGuidBinary" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyGuidBinary" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
END

