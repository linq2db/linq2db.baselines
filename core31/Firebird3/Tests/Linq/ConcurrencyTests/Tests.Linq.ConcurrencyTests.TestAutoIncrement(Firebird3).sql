BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ConcurrencyTable"
			(
				"Id"    Int                                    NOT NULL,
				"Stamp" Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ConcurrencyTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO "ConcurrencyTable"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	@Id,
	@Stamp,
	@Value_1
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = @Value_1
WHERE
	"ConcurrencyTable"."Id" = @Id AND "ConcurrencyTable"."Stamp" = @Stamp

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = @Value_1
WHERE
	"ConcurrencyTable"."Id" = @Id AND "ConcurrencyTable"."Stamp" = @Stamp

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = @Value_1
WHERE
	"ConcurrencyTable"."Id" = @Id AND "ConcurrencyTable"."Stamp" = @Stamp

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyTable" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -8

DELETE FROM
	"ConcurrencyTable" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyTable"';
END

