﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue681Table2"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "TESTDB"."Issue681Table2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "Issue681Table2"

