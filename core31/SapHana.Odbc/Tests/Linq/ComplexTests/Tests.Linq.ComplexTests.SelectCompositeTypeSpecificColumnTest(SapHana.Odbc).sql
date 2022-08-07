﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "User"
(
	"city"            NVarChar(255)     NULL,
	"user_name"       NVarChar(255)     NULL,
	"street"          NVarChar(255)     NULL,
	"building_number" Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"u"."city"
FROM
	"User" "u"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"u"."street"
FROM
	"User" "u"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

