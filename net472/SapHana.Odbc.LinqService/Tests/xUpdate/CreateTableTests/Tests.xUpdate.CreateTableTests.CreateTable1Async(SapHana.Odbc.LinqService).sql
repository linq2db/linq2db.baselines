﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTable"
(
	"ID"        Integer       GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	"Field1"    NVarChar(50)                                       NULL,
	"Field2"    NVarChar(255)                                      NULL,
	"CreatedOn" Timestamp                                          NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Field1",
	"t1"."Field2",
	"t1"."CreatedOn"
FROM
	"TestTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

