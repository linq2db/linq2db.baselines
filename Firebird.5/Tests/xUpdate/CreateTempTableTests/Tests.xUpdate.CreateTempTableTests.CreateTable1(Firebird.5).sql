BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TempTable"
			(
				ID Int NOT NULL,

				CONSTRAINT "PK_TempTable" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "TempTable"
(
	ID
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID
FROM
	"TempTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t".ID
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t".ID

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

