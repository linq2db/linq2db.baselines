BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyFiltered')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyFiltered"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyFiltered')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ConcurrencyFiltered"
			(
				"Id"    Int                                    NOT NULL,
				"Stamp" Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ConcurrencyFiltered" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyFiltered"
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
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered" "r"
SET
	"Stamp" = "r"."Stamp" + 1,
	"Value" = CAST(@Value AS VARCHAR(7))
WHERE
	"r"."Id" = 2 AND "r"."Id" = @Id AND "r"."Stamp" = @Stamp

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered" "r"
SET
	"Stamp" = "r"."Stamp" + 1,
	"Value" = CAST(@Value AS VARCHAR(7))
WHERE
	"r"."Id" = 1 AND "r"."Id" = @Id AND "r"."Stamp" = @Stamp

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" "r"
WHERE
	"r"."Id" = 2 AND "r"."Id" = @Id AND "r"."Stamp" = @Stamp

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" "r"
WHERE
	"r"."Id" = 1 AND "r"."Id" = @Id AND "r"."Stamp" = @Stamp

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyFiltered')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyFiltered"';
END

