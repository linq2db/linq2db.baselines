BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PatentAssessment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PatentAssessment"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PatentAssessment')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PatentAssessment"
			(
				"PatentId"               Int                                     NOT NULL,
				"TechnicalReviewersText" VarChar(1000) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_PatentAssessment" PRIMARY KEY ("PatentId")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2918Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2918Table2"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2918Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2918Table2"
			(
				"PatentId" Int NOT NULL,
				"UserId"   Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "User"
			(
				"Id"          Int                                     NOT NULL,
				"DisplayName" VarChar(1000) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_User" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @userId Integer -- Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" "Target"
USING (
	SELECT
		"pa"."PatentId" as "source_PatentId",
		(
			SELECT
				LIST("a_User"."DisplayName", '; ')
			FROM
				"Issue2918Table2" "patr"
					LEFT JOIN "User" "a_User" ON "patr"."UserId" = "a_User"."Id"
			WHERE
				"patr"."PatentId" = "pa"."PatentId"
		) as "source_TechnicalReviewersText"
	FROM
		"PatentAssessment" "pa"
	WHERE
		 EXISTS (
			SELECT
				*
			FROM
				"Issue2918Table2" "patr_1"
			WHERE
				"patr_1"."UserId" = @userId AND "patr_1"."PatentId" = "pa"."PatentId"
		)
) "Source"
(
	"source_PatentId",
	"source_TechnicalReviewersText"
)
ON ("Target"."PatentId" = "Source"."source_PatentId")

WHEN MATCHED THEN
UPDATE
SET
	"TechnicalReviewersText" = "Source"."source_TechnicalReviewersText"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2918Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2918Table2"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PatentAssessment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PatentAssessment"';
END

