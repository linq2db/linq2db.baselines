BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NC_CODE"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NC_CODE"
(
	"HANDLE"             NVarChar(255) NOT NULL,
	"CHANGE_STAMP"       Decimal           NULL,
	"SITE"               NVarChar(18)      NULL,
	"NC_CODE"            NVarChar(48)      NULL,
	"DESCRIPTION"        NVarChar(120)     NULL,
	"STATUS_BO"          NVarChar(255)     NULL,
	"CREATED_DATE_TIME"  Timestamp         NULL,
	"MODIFIED_DATE_TIME" Timestamp         NULL,
	"NC_CATEGORY"        NVarChar(255)     NULL,
	"DPMO_CATEGORY_BO"   NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NC_GROUP_MEMBER"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NC_GROUP_MEMBER"
(
	"HANDLE"               NVarChar(255) NOT NULL,
	"NC_GROUP_BO"          NVarChar(255)     NULL,
	"NC_CODE_OR_GROUP_GBO" NVarChar(255)     NULL,
	"SEQUENCE"             Decimal           NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NC_GROUP_MEMBER"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NC_CODE"

