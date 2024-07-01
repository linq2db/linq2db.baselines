BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3757Level1"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3757Level1"
			(
				ID       Int                                    NOT NULL,
				"ValS"   VarChar(255) CHARACTER SET UNICODE_FSS,
				"ValB"   BOOLEAN,
				"ValInt" Int,

				CONSTRAINT "PK_Issue3757Level1" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3757Level2"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3757Level2"
			(
				ID         Int                                    NOT NULL,
				"ParentId" Int                                    NOT NULL,
				"ValS"     VarChar(255) CHARACTER SET UNICODE_FSS,
				"ValB"     BOOLEAN,
				"ValInt"   Int,

				CONSTRAINT "PK_Issue3757Level2" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1".ID,
	"m_1"."ValS",
	"d".ID,
	"d"."ValB",
	"d"."ValInt"
FROM
	"Issue3757Level1" "m_1"
		INNER JOIN "Issue3757Level2" "d" ON "m_1".ID = "d"."ParentId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"l1".ID,
	"l1"."ValB",
	"l1"."ValS",
	"l1"."ValInt"
FROM
	"Issue3757Level1" "l1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3757Level2"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3757Level1"';
END

