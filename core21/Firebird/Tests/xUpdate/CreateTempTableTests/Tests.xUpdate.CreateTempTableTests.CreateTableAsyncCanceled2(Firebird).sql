BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

BeforeExecute
-- Firebird (asynchronously)

CREATE TABLE "TempTable"
(
	ID Int NOT NULL
)

BeforeExecute
-- Firebird (asynchronously)

INSERT INTO "TempTable"
(
	ID
)
SELECT 
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- Firebird (asynchronously)

DROP TABLE "TempTable"

BeforeExecute
-- Firebird

DROP TABLE "TempTable"

