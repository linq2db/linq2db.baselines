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

INSERT INTO "SelectExpressionTable"
(
	ID
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectExpressionTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectExpressionTable"';
END

