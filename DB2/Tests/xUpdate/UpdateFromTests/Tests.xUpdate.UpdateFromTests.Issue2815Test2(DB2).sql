BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"Issue2815Table1"
SET
	(TRANS_CHANNEL, IDF) = (
		SELECT
			Coalesce("channel_1"."Trans_Channel", 1),
			Coalesce("channel_1"."Idf", 0)
		FROM
			"Issue2815Table1" "ext_1"
				LEFT JOIN "Issue2815Table2" "source_1" ON "source_1".ISO = "ext_1".SRC_BIC
				LEFT JOIN "Issue2815Table2" "destination_1" ON "destination_1".ISO = "ext_1".DES_BIC
				LEFT JOIN "Issue2815Table3" "channel_1" ON "channel_1"."TreasuryCenter" = "ext_1".TREA_CENT AND "channel_1".BIC = "ext_1".SRC_BIC AND "channel_1"."Sepa" = CASE
					WHEN "source_1".SEPA AND "destination_1".SEPA THEN CASE
						WHEN "source_1".ISO = "destination_1".ISO OR "source_1".ISO IS NULL AND "destination_1".ISO IS NULL
							THEN 0
						ELSE 1
					END
					ELSE 2
				END
		WHERE
			"ext_1".NOT_HANDLED = 2 AND "ext_1".TRANS_CHANNEL IS NULL AND
			"Issue2815Table1"."Id" = "ext_1"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue2815Table1" "ext"
				LEFT JOIN "Issue2815Table2" "source" ON "source".ISO = "ext".SRC_BIC
				LEFT JOIN "Issue2815Table2" "destination" ON "destination".ISO = "ext".DES_BIC
				LEFT JOIN "Issue2815Table3" "channel" ON "channel"."TreasuryCenter" = "ext".TREA_CENT AND "channel".BIC = "ext".SRC_BIC AND "channel"."Sepa" = CASE
					WHEN "source".SEPA AND "destination".SEPA THEN CASE
						WHEN "source".ISO = "destination".ISO OR "source".ISO IS NULL AND "destination".ISO IS NULL
							THEN 0
						ELSE 1
					END
					ELSE 2
				END
		WHERE
			"ext".NOT_HANDLED = 2 AND "ext".TRANS_CHANNEL IS NULL AND
			"Issue2815Table1"."Id" = "ext"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1".SRC_BIC,
	"t1".DES_BIC,
	"t1".IDF,
	"t1".TREA_CENT,
	"t1".NOT_HANDLED,
	"t1".TRANS_CHANNEL
FROM
	"Issue2815Table1" "t1"
ORDER BY
	"t1".SRC_BIC,
	"t1".DES_BIC

