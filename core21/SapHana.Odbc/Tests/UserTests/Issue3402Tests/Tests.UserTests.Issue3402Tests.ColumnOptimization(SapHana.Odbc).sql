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

CREATE COLUMN TABLE "VEMPLOYEE_SCHDL_PERM"
(
	"ID"        Integer NOT NULL,
	"IS_ACTIVE" TinyInt NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"VEMPLOYEE_SCHDL_PERM" "y"
					WHERE
						"ess"."ID" = "y"."ID" AND "y"."IS_ACTIVE" = 1
				)
					THEN 1
				ELSE 0
			END as "allowEdit",
			"ess"."ID"
		FROM
			"VEMPLOYEE_SCH_SEC" "ess"
	) "t1"
WHERE
	"t1"."allowEdit" = 1 AND "t1"."allowEdit" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	(
		SELECT
			1 as "allowEdit",
			"ess"."ID"
		FROM
			"VEMPLOYEE_SCH_SEC" "ess"
	) "t1"
WHERE
	"t1"."allowEdit" = 1 AND "t1"."allowEdit" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "VEMPLOYEE_SCHDL_PERM"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "VEMPLOYEE_SCH_SEC"

