﻿BeforeExecute
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

UPDATE
	"Issue2815Table1"
SET
	"TRANS_CHANNEL" = (
		SELECT
			"channel_1"."Trans_Channel"
		FROM
			"Issue2815Table1" "ext_1"
				LEFT JOIN "Issue2815Table2" "source_1" ON "source_1"."ISO" = "ext_1"."SRC_BIC"
				LEFT JOIN "Issue2815Table2" "destination_1" ON "destination_1"."ISO" = "ext_1"."DES_BIC"
				LEFT JOIN "Issue2815Table3" "channel_1" ON "channel_1"."TreasuryCenter" = "ext_1"."TREA_CENT" AND "channel_1"."BIC" = "ext_1"."SRC_BIC" AND "channel_1"."Sepa" = CASE
					WHEN "source_1"."SEPA" = 1 AND "destination_1"."SEPA" = 1
						THEN CASE
						WHEN "source_1"."ISO" = "destination_1"."ISO" AND "source_1"."ISO" IS NOT NULL AND "destination_1"."ISO" IS NOT NULL OR "source_1"."ISO" IS NULL AND "destination_1"."ISO" IS NULL
							THEN 0
						ELSE 1
					END
					ELSE 2
				END
		WHERE
			"ext_1"."NOT_HANDLED" = 2 AND
			"ext_1"."TRANS_CHANNEL" IS NULL AND
			"Issue2815Table1"."SRC_BIC" = "ext_1"."SRC_BIC" AND
			"Issue2815Table1"."DES_BIC" = "ext_1"."DES_BIC" AND
			"Issue2815Table1"."IDF" = "ext_1"."IDF" AND
			"Issue2815Table1"."TREA_CENT" = "ext_1"."TREA_CENT" AND
			"Issue2815Table1"."NOT_HANDLED" = "ext_1"."NOT_HANDLED" AND
			("Issue2815Table1"."TRANS_CHANNEL" = "ext_1"."TRANS_CHANNEL" AND "Issue2815Table1"."TRANS_CHANNEL" IS NOT NULL AND "ext_1"."TRANS_CHANNEL" IS NOT NULL OR "Issue2815Table1"."TRANS_CHANNEL" IS NULL AND "ext_1"."TRANS_CHANNEL" IS NULL)
	),
	"IDF" = (
		SELECT
			"channel_2"."Idf"
		FROM
			"Issue2815Table1" "ext_2"
				LEFT JOIN "Issue2815Table2" "source_2" ON "source_2"."ISO" = "ext_2"."SRC_BIC"
				LEFT JOIN "Issue2815Table2" "destination_2" ON "destination_2"."ISO" = "ext_2"."DES_BIC"
				LEFT JOIN "Issue2815Table3" "channel_2" ON "channel_2"."TreasuryCenter" = "ext_2"."TREA_CENT" AND "channel_2"."BIC" = "ext_2"."SRC_BIC" AND "channel_2"."Sepa" = CASE
					WHEN "source_2"."SEPA" = 1 AND "destination_2"."SEPA" = 1
						THEN CASE
						WHEN "source_2"."ISO" = "destination_2"."ISO" AND "source_2"."ISO" IS NOT NULL AND "destination_2"."ISO" IS NOT NULL OR "source_2"."ISO" IS NULL AND "destination_2"."ISO" IS NULL
							THEN 0
						ELSE 1
					END
					ELSE 2
				END
		WHERE
			"ext_2"."NOT_HANDLED" = 2 AND
			"ext_2"."TRANS_CHANNEL" IS NULL AND
			"Issue2815Table1"."SRC_BIC" = "ext_2"."SRC_BIC" AND
			"Issue2815Table1"."DES_BIC" = "ext_2"."DES_BIC" AND
			"Issue2815Table1"."IDF" = "ext_2"."IDF" AND
			"Issue2815Table1"."TREA_CENT" = "ext_2"."TREA_CENT" AND
			"Issue2815Table1"."NOT_HANDLED" = "ext_2"."NOT_HANDLED" AND
			("Issue2815Table1"."TRANS_CHANNEL" = "ext_2"."TRANS_CHANNEL" AND "Issue2815Table1"."TRANS_CHANNEL" IS NOT NULL AND "ext_2"."TRANS_CHANNEL" IS NOT NULL OR "Issue2815Table1"."TRANS_CHANNEL" IS NULL AND "ext_2"."TRANS_CHANNEL" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue2815Table1" "ext"
				LEFT JOIN "Issue2815Table2" "source" ON "source"."ISO" = "ext"."SRC_BIC"
				LEFT JOIN "Issue2815Table2" "destination" ON "destination"."ISO" = "ext"."DES_BIC"
				LEFT JOIN "Issue2815Table3" "channel" ON "channel"."TreasuryCenter" = "ext"."TREA_CENT" AND "channel"."BIC" = "ext"."SRC_BIC" AND "channel"."Sepa" = CASE
					WHEN "source"."SEPA" = 1 AND "destination"."SEPA" = 1 THEN CASE
						WHEN "source"."ISO" = "destination"."ISO" AND "source"."ISO" IS NOT NULL AND "destination"."ISO" IS NOT NULL OR "source"."ISO" IS NULL AND "destination"."ISO" IS NULL
							THEN 0
						ELSE 1
					END
					ELSE 2
				END
		WHERE
			"ext"."NOT_HANDLED" = 2 AND
			"ext"."TRANS_CHANNEL" IS NULL AND
			"Issue2815Table1"."SRC_BIC" = "ext"."SRC_BIC" AND
			"Issue2815Table1"."DES_BIC" = "ext"."DES_BIC" AND
			"Issue2815Table1"."IDF" = "ext"."IDF" AND
			"Issue2815Table1"."TREA_CENT" = "ext"."TREA_CENT" AND
			"Issue2815Table1"."NOT_HANDLED" = "ext"."NOT_HANDLED" AND
			("Issue2815Table1"."TRANS_CHANNEL" = "ext"."TRANS_CHANNEL" AND "Issue2815Table1"."TRANS_CHANNEL" IS NOT NULL AND "ext"."TRANS_CHANNEL" IS NOT NULL OR "Issue2815Table1"."TRANS_CHANNEL" IS NULL AND "ext"."TRANS_CHANNEL" IS NULL)
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

