BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PatentAssessment"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PatentAssessment"
(
	"PatentId"               Integer        NOT NULL,
	"TechnicalReviewersText" NVarChar(1000)     NULL,

	PRIMARY KEY ("PatentId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2918Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue2918Table2"
(
	"PatentId" Integer NOT NULL,
	"UserId"   Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "User"
(
	"Id"          Integer        NOT NULL,
	"DisplayName" NVarChar(1000) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @userId  -- Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" "Target"
USING (
	SELECT
		"pa"."PatentId" as "source_PatentId",
		(
			SELECT
				STRING_AGG("a_User"."DisplayName", '; ' ORDER BY "a_User"."DisplayName")
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
				1
			FROM
				"Issue2918Table2" "patr_1"
			WHERE
				"patr_1"."UserId" = ? AND "patr_1"."PatentId" = "pa"."PatentId"
		)
) "Source"
ON ("Target"."PatentId" = "Source"."source_PatentId")

WHEN MATCHED THEN
UPDATE
SET
	"TechnicalReviewersText" = "Source"."source_TechnicalReviewersText"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2918Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PatentAssessment"

