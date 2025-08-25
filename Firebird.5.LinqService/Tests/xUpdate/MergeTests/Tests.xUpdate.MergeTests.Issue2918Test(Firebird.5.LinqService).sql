BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @userId Integer -- Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" "Target"
USING (
	SELECT
		"pa"."PatentId",
		(
			SELECT
				LIST("a_User"."DisplayName", '; ')
			FROM
				"Issue2918Table2" "patr"
					LEFT JOIN "User" "a_User" ON "patr"."UserId" = "a_User"."Id"
			WHERE
				"patr"."PatentId" = "pa"."PatentId"
		) as "TechnicalReviewersText"
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
	"PatentId",
	"TechnicalReviewersText"
)
ON ("Target"."PatentId" = "Source"."PatentId")

WHEN MATCHED THEN
UPDATE
SET
	"TechnicalReviewersText" = "Source"."TechnicalReviewersText"

