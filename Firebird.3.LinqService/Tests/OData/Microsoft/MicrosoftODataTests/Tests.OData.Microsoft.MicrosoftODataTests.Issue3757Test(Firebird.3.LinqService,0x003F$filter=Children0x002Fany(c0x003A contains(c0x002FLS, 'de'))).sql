BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3757Level1"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3757Level2"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @TypedProperty VarChar(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	"m_1".ID,
	"m_1"."ValS",
	"d".ID,
	"d"."ValB",
	"d"."ValInt"
FROM
	(
		SELECT DISTINCT
			"l1".ID,
			"l1"."ValS"
		FROM
			"Issue3757Level1" "l1"
		WHERE
			 EXISTS (
				SELECT
					*
				FROM
					"Issue3757Level2" "c_1"
				WHERE
					"l1".ID = "c_1"."ParentId" AND "l1"."ValS" LIKE @TypedProperty ESCAPE '~' AND
					"l1"."ValS" IS NOT NULL
			)
	) "m_1"
		INNER JOIN "Issue3757Level2" "d" ON "m_1".ID = "d"."ParentId"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TypedProperty VarChar(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	"it".ID,
	"it"."ValB",
	"it"."ValS",
	"it"."ValInt"
FROM
	"Issue3757Level1" "it"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Issue3757Level2" "c_1"
		WHERE
			"it".ID = "c_1"."ParentId" AND "it"."ValS" LIKE @TypedProperty ESCAPE '~' AND
			"it"."ValS" IS NOT NULL
	)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3757Level2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3757Level1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3757Level1"';
END

