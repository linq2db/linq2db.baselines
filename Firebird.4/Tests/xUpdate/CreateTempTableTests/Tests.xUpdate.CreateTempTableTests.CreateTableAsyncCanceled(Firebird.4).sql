﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TempTable"
			(
				ID Int NOT NULL
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird.4 Firebird4

DROP TABLE "TempTable"

