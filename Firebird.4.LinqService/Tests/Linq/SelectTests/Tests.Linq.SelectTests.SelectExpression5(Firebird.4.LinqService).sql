BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
DECLARE @p Boolean
SET     @p = TRUE
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	CAST(@p AS BOOLEAN)
FROM
	"SelectExpressionTable" "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

