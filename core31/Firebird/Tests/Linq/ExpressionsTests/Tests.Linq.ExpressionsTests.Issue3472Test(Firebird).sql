BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3472TableDC')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3472TableDC"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3472TableDC')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3472TableDC"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "Issue3472TableDC"
(
	"Id"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	(
		SELECT
			Count(*)
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = "t1"."Id"
	)
FROM
	"Issue3472TableDC" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3472TableDC')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3472TableDC"';
END

