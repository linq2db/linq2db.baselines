BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "VEMPLOYEE_SCH_SEC"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "VEMPLOYEE_SCH_SEC"
(
	"ACTIVE" TinyInt       NOT NULL,
	"ID"     Integer       NOT NULL,
	"NAME"   NVarChar(255) NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "VEMPLOYEE_SCHDL_PERM"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "VEMPLOYEE_SCHDL_PERM"
(
	"ID"        Integer NOT NULL,
	"IS_ACTIVE" TinyInt NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"ess"."ID"
FROM
	"VEMPLOYEE_SCH_SEC" "ess"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"VEMPLOYEE_SCHDL_PERM" "y"
		WHERE
			"ess"."ID" = "y"."ID" AND "y"."IS_ACTIVE" = 1
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "VEMPLOYEE_SCHDL_PERM"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "VEMPLOYEE_SCH_SEC"

