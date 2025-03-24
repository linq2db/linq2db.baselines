﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "TempTable"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc (asynchronously)

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID"
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t"."ID"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "TempTable"

