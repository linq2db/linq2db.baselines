BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TypedProperty NVarChar(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	"m_1"."ID",
	"m_1"."ValS",
	"d"."ID",
	"d"."ValB",
	"d"."ValInt"
FROM
	"Issue3757Level1" "m_1"
		INNER JOIN "Issue3757Level2" "d" ON "m_1"."ID" = "d"."ParentId"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue3757Level2" "c_1"
		WHERE
			"m_1"."ID" = "c_1"."ParentId" AND "m_1"."ValS" LIKE ? ESCAPE '~' AND
			"m_1"."ValS" IS NOT NULL
	)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TypedProperty NVarChar(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	"it"."ID",
	"it"."ValB",
	"it"."ValS",
	"it"."ValInt"
FROM
	"Issue3757Level1" "it"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue3757Level2" "c_1"
		WHERE
			"it"."ID" = "c_1"."ParentId" AND "it"."ValS" LIKE ? ESCAPE '~' AND
			"it"."ValS" IS NOT NULL
	)

