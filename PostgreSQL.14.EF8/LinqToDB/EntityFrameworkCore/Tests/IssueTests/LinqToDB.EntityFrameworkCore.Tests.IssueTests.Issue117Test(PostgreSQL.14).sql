Parameters:
@__userId_1='?' (DbType = Int32), @__userId_0='?' (DbType = Int32)

SELECT p."Id" AS "PatentId", @__userId_1 AS "UserId"
FROM "Patents" AS p
LEFT JOIN "PatentAssessment" AS p0 ON p."Id" = p0."PatentId"
WHERE p0."PatentId" IS NULL OR p0."TechnicalReviewerId" <> @__userId_0 OR p0."TechnicalReviewerId" IS NULL


-- PostgreSQL.13 PostgreSQL
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



