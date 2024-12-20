BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4723Table1"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4723Table1"
			(
				"Id"               Int                                    NOT NULL,
				"ExpressionMethod" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ExpressionMethod VarChar -- String
SET     @ExpressionMethod = NULL

INSERT INTO "Issue4723Table1"
(
	"Id",
	"ExpressionMethod"
)
VALUES
(
	@Id,
	@ExpressionMethod
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4723Table2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4723Table2"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO "Issue4723Table2"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO "Issue4723Table2"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 2'

INSERT INTO "Issue4723Table2"
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
-- Firebird.3 Firebird3

SELECT
	"t2"."Id",
	(
		SELECT
			"se"."Value"
		FROM
			"Issue4723Table2" "se"
		WHERE
			"se"."Id" = "t2"."Id"
		FETCH NEXT 1 ROWS ONLY
	),
	"t1"."Association"
FROM
	"Issue4723Table1" "t2"
		LEFT JOIN (
			SELECT
				"a_Association"."Value" as "Association",
				ROW_NUMBER() OVER (PARTITION BY "a_Association"."Id" ORDER BY "a_Association"."Id") as "rn",
				"a_Association"."Id"
			FROM
				"Issue4723Table2" "a_Association"
		) "t1" ON "t1"."Id" = "t2"."Id" AND "t1"."rn" <= 1

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4723Table2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4723Table1"';
END

