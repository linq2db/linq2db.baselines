﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SelectExpressionTable"
			(
				ID Int NOT NULL,

				CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO "SelectExpressionTable"
(
	ID
)
VALUES
(
	CAST(@ID AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	1
FROM
	"SelectExpressionTable" "t1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

