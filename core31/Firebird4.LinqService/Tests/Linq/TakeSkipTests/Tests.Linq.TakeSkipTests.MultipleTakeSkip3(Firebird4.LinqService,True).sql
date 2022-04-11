BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TakeSkipClass"
			(
				"Value" VarChar(10) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value1'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value2'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value3'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value4'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value5'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value6'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value7'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value8'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value9'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 1
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 3

SELECT FIRST @skip_2 SKIP @skip_3
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

