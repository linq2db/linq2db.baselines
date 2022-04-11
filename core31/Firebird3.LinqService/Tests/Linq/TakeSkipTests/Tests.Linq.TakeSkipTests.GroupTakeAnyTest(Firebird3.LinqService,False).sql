BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PIPPO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'BOLTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	CASE
		WHEN EXISTS(
			SELECT FIRST 1
				"t1"."Value"
			FROM
				"TakeSkipClass" "t1"
			GROUP BY
				"t1"."Value"
			HAVING
				Count(*) > 1
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

