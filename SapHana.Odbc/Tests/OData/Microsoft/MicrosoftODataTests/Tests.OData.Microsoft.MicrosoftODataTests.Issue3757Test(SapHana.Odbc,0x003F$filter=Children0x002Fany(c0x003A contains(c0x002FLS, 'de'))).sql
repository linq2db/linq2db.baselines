﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3757Level1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3757Level1"
(
	"ID"     Integer       NOT NULL,
	"ValS"   NVarChar(255)     NULL,
	"ValB"   TinyInt           NULL,
	"ValInt" Integer           NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3757Level2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3757Level2"
(
	"ID"       Integer       NOT NULL,
	"ParentId" Integer       NOT NULL,
	"ValS"     NVarChar(255)     NULL,
	"ValB"     TinyInt           NULL,
	"ValInt"   Integer           NULL,

	PRIMARY KEY ("ID")
)

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
	(
		SELECT DISTINCT
			"l1"."ID",
			"l1"."ValS"
		FROM
			"Issue3757Level1" "l1"
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Issue3757Level2" "c_1"
				WHERE
					"l1"."ID" = "c_1"."ParentId" AND "l1"."ValS" LIKE ? ESCAPE '~' AND
					"l1"."ValS" IS NOT NULL
			)
	) "m_1"
		INNER JOIN "Issue3757Level2" "d" ON "m_1"."ID" = "d"."ParentId"

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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3757Level2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3757Level1"

