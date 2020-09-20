BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- Firebird3 Firebird (asynchronously)

CREATE TABLE "TempTable"
(
	ID Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "TempTable"

