-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @userId Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" Target
USING (
	SELECT
		pa."PatentId",
		(
			SELECT
				LISTAGG(CASE
					WHEN t1."PatentId" = pa."PatentId" THEN a_User."DisplayName"
					ELSE NULL
				END, '; ') WITHIN GROUP (ORDER BY a_User."DisplayName")
			FROM
				"Issue2918Table2" t1
					LEFT JOIN "User" a_User ON t1."UserId" = a_User."Id"
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
ON (Target."PatentId" = "Source"."PatentId")

WHEN MATCHED THEN
UPDATE
SET
	"TechnicalReviewersText" = "Source"."TechnicalReviewersText"

