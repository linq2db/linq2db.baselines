﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1316Tests')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1316Tests"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	ID
)
VALUES
(
	CAST(@ID AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT FIRST 2
	"t1".ID
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1316Tests')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1316Tests"';
END

