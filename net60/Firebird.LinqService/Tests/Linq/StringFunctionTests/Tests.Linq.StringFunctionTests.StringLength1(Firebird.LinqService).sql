BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsNullOrEmptyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IsNullOrEmptyTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsNullOrEmptyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "IsNullOrEmptyTable"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarChar(3) -- String
SET     @Value = '   '

INSERT INTO "IsNullOrEmptyTable"
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
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value VarChar -- String
SET     @Value = ''

INSERT INTO "IsNullOrEmptyTable"
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
-- Firebird

SELECT
	"p"."Id",
	"p"."Value"
FROM
	"IsNullOrEmptyTable" "p"
WHERE
	Char_Length("p"."Value") = 0

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsNullOrEmptyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IsNullOrEmptyTable"';
END

