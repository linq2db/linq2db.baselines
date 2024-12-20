BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO "SelectExpressionTable"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	'1'
FROM
	"SelectExpressionTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

