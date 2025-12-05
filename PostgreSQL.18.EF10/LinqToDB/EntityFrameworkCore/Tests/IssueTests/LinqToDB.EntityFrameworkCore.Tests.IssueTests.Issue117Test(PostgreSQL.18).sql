Parameters:
@userId0='?' (DbType = Int32), @userId='?' (DbType = Int32)

SELECT p."Id" AS "PatentId", @userId0 AS "UserId"
FROM "Patents" AS p
LEFT JOIN "PatentAssessment" AS p0 ON p."Id" = p0."PatentId"
WHERE p0."PatentId" IS NULL OR p0."TechnicalReviewerId" <> @userId OR p0."TechnicalReviewerId" IS NULL


-- PostgreSQL.18 PostgreSQL
DECLARE @userId Integer -- Int32
SET     @userId = 1

SELECT
	p."Id"
FROM
	"Patents" p
		LEFT JOIN "PatentAssessment" "a_Assessment" ON p."Id" = "a_Assessment"."PatentId"
WHERE
	"a_Assessment"."PatentId" IS NULL OR "a_Assessment"."TechnicalReviewerId" <> :userId OR
	"a_Assessment"."TechnicalReviewerId" IS NULL



