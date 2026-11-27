-- DB2 DB2.LUW DB2LUW
DECLARE @userId Integer(4) -- Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" "Target"
USING (
	SELECT
		"pa"."PatentId",
		(
			SELECT
				LISTAGG("a_User"."DisplayName", '; ') WITHIN GROUP (ORDER BY "a_User"."DisplayName")
			FROM
				"PatentAssessmentReviewer" "patr"
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
				"PatentAssessmentReviewer" "patr_1"
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

