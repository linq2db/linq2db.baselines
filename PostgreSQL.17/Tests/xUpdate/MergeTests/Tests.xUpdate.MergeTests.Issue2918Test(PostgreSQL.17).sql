-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @userId Integer -- Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" "Target"
USING (
	SELECT
		pa."PatentId",
		(
			SELECT
				STRING_AGG("a_User"."DisplayName", '; ' ORDER BY "a_User"."DisplayName" NULLS FIRST) FILTER (WHERE t1."PatentId" = pa."PatentId")
			FROM
				"Issue2918Table2" t1
					LEFT JOIN "User" "a_User" ON t1."UserId" = "a_User"."Id"
		) as "TechnicalReviewersText"
	FROM
		"PatentAssessment" pa
	WHERE
		EXISTS(
			SELECT
				*
			FROM
				"Issue2918Table2" patr
			WHERE
				patr."UserId" = :userId AND patr."PatentId" = pa."PatentId"
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

