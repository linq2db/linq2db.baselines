﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "i1084_person"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "i1084_person"
(
	"Id"            Integer NOT NULL,
	"Number"        Integer NOT NULL,
	"StatusBitmask" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "i1084_student"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "i1084_student"
(
	"Id"            Integer       NOT NULL,
	"Number"        NVarChar(255)     NULL,
	"StatusBitmask" Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "i1084_student"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "i1084_person"

