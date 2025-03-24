﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTable"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value",
	"t2"."Id",
	"t2"."Value",
	"t3"."Id",
	"t3"."Value"
FROM
	"TestTable" "t1"
		INNER JOIN "TestTable" "t2" ON "t1"."Id" = "t2"."Id"
		INNER JOIN "TestTable" "t3" ON "t2"."Id" = "t3"."Id"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

