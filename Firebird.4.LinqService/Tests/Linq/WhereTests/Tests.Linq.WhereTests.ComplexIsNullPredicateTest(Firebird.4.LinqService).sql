BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPredicate')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ComplexPredicate"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPredicate')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ComplexPredicate"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarChar -- String
SET     @Value = NULL

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value VarChar(5) -- String
SET     @Value = 'other'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value VarChar(3) -- String
SET     @Value = '123'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value VarChar(4) -- String
SET     @Value = 'test'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value VarChar(1) -- String
SET     @Value = '1'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"ComplexPredicate" "r"
WHERE
	CASE
		WHEN "r"."Value" = '123' THEN TRUE
		ELSE FALSE
	END = CASE
		WHEN "r"."Value" = '1' OR "r"."Value" = 'test' AND ("r"."Value" <> '1' OR "r"."Value" IS NULL)
			THEN TRUE
		ELSE FALSE
	END
ORDER BY
	"r"."Id"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ComplexPredicate" "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPredicate')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ComplexPredicate"';
END

