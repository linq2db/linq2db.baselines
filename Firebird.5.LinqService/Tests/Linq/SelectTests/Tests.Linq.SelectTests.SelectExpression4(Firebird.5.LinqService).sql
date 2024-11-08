BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

