BeforeExecute
-- Firebird.3 Firebird3
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
		EXISTS(
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

