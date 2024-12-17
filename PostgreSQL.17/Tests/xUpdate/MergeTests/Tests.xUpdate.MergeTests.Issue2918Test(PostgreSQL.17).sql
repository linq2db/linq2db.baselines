BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PatentAssessment"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "PatentAssessment"
(
	"PatentId"               Int  NOT NULL,
	"TechnicalReviewersText" text     NULL,

	CONSTRAINT "PK_PatentAssessment" PRIMARY KEY ("PatentId")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2918Table2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2918Table2"
(
	"PatentId" Int NOT NULL,
	"UserId"   Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "User"
(
	"Id"          Int  NOT NULL,
	"DisplayName" text NOT NULL,

	CONSTRAINT "PK_User" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @userId Integer -- Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" "Target"
USING (
	SELECT
		pa."PatentId" as "source_PatentId",
		(
			SELECT
				STRING_AGG("a_User"."DisplayName", '; ' ORDER BY "a_User"."DisplayName")
			FROM
				"Issue2918Table2" patr
					LEFT JOIN "User" "a_User" ON patr."UserId" = "a_User"."Id"
			WHERE
				patr."PatentId" = pa."PatentId"
		) as "source_TechnicalReviewersText"
	FROM
		"PatentAssessment" pa
	WHERE
		 EXISTS (
			SELECT
				*
			FROM
				"Issue2918Table2" patr_1
			WHERE
				patr_1."UserId" = :userId AND patr_1."PatentId" = pa."PatentId"
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2918Table2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PatentAssessment"

