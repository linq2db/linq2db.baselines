﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue681Table4"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue681Table4"
(
	"ID"    Integer GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	"Value" Integer                                  NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue681Table4"

