BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "TempTable"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "TempTable"
(
	ID
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t".ID
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t".ID

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "TempTable"

