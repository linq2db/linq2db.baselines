BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyAutoIncrement')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyAutoIncrement"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyAutoIncrement')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ConcurrencyAutoIncrement"
			(
				"Id"    Int                                    NOT NULL,
				"Stamp" Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ConcurrencyAutoIncrement" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO "ConcurrencyAutoIncrement"
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
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyAutoIncrement"
SET
	"ConcurrencyAutoIncrement"."Stamp" = "ConcurrencyAutoIncrement"."Stamp" + 1,
	"ConcurrencyAutoIncrement"."Value" = @Value_1
WHERE
	"ConcurrencyAutoIncrement"."Id" = @Id AND "ConcurrencyAutoIncrement"."Stamp" = @Stamp

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement"
SET
	"ConcurrencyAutoIncrement"."Stamp" = "ConcurrencyAutoIncrement"."Stamp" + 1,
	"ConcurrencyAutoIncrement"."Value" = @Value_1
WHERE
	"ConcurrencyAutoIncrement"."Id" = @Id AND "ConcurrencyAutoIncrement"."Stamp" = @Stamp

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement"
SET
	"ConcurrencyAutoIncrement"."Stamp" = "ConcurrencyAutoIncrement"."Stamp" + 1,
	"ConcurrencyAutoIncrement"."Value" = @Value_1
WHERE
	"ConcurrencyAutoIncrement"."Id" = @Id AND "ConcurrencyAutoIncrement"."Stamp" = @Stamp

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyAutoIncrement" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -8

DELETE FROM
	"ConcurrencyAutoIncrement" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyAutoIncrement')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyAutoIncrement"';
END

