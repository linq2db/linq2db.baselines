BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2815Table1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue2815Table1"
(
	"SRC_BIC"       Integer NOT NULL,
	"DES_BIC"       Integer NOT NULL,
	"IDF"           Integer NOT NULL,
	"TREA_CENT"     Integer NOT NULL,
	"NOT_HANDLED"   Integer NOT NULL,
	"TRANS_CHANNEL" Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2815Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue2815Table2"
(
	"ISO"  Integer NOT NULL,
	"SEPA" TinyInt NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2815Table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue2815Table3"
(
	"TreasuryCenter" Integer NOT NULL,
	"BIC"            Integer NOT NULL,
	"Sepa"           Integer NOT NULL,
	"Trans_Channel"  Integer NOT NULL,
	"Idf"            Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2815Table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2815Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2815Table1"

