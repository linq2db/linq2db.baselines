﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

INSERT INTO "TakeSkipClass"
(
	"Value"
)
SELECT CAST('PIPPO' AS VarChar(10) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 'PLUTO' FROM rdb$database UNION ALL
SELECT 'PLUTO' FROM rdb$database UNION ALL
SELECT 'BOLTO' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				"t1"."Value"
			FROM
				"TakeSkipClass" "t1"
			GROUP BY
				"t1"."Value"
			HAVING
				Count(*) > 1
			FETCH NEXT @take ROWS ONLY
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

