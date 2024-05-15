BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1316Tests')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1316Tests"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1316Tests')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1316Tests"
			(
				ID Int NOT NULL,

				CONSTRAINT "PK_Issue1316Tests" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1".ID
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1".ID IN (4, 5, 6)
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1316Tests')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1316Tests"';
END

