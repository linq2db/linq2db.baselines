BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsNullOrEmptyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IsNullOrEmptyTable"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarChar(4) -- String
SET     @Value = 'x   '

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
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value VarChar(5) -- String
SET     @Value = 'xxxx '

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
-- Firebird4 Firebird

SELECT
	"p"."Id",
	"p"."Value"
FROM
	"IsNullOrEmptyTable" "p"
WHERE
	Char_Length("p"."Value") = 4

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsNullOrEmptyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IsNullOrEmptyTable"';
END

