BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "Issue681Table"
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table"';
END

