BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue681Table"
			(
				ID      Int NOT NULL,
				"Value" Int NOT NULL,

				CONSTRAINT "PK_Issue681Table" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"Issue681Table" "t1"
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table"';
END

