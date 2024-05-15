BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PIPPO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value VarChar(5) -- String
SET     @Value = 'BOLTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT FIRST @take
				"group_1"."Value"
			FROM
				"TakeSkipClass" "group_1"
			GROUP BY
				"group_1"."Value"
			HAVING
				COUNT(*) > 1
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

