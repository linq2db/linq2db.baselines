-- Firebird.5 Firebird4

UPDATE
	"Issue2815Table1"
SET
	TRANS_CHANNEL = (
		SELECT
			Coalesce("channel_1"."Trans_Channel", 1)
		FROM
			"Issue2815Table1" "t2"
				LEFT JOIN "Issue2815Table2" "source_1" ON "source_1".ISO = "t2".SRC_BIC
				LEFT JOIN "Issue2815Table2" "destination_1" ON "destination_1".ISO = "t2".DES_BIC
				LEFT JOIN "Issue2815Table3" "channel_1" ON "channel_1"."Id" = "Issue2815Table1"."Id" AND "channel_1"."TreasuryCenter" = "t2".TREA_CENT AND "channel_1".BIC = "t2".SRC_BIC AND "channel_1"."Sepa" = CASE
					WHEN "source_1".SEPA AND "destination_1".SEPA THEN CASE
						WHEN "source_1".ISO = "destination_1".ISO OR "source_1".ISO IS NULL AND "destination_1".ISO IS NULL
							THEN 0
						ELSE 1
					END
					ELSE 2
				END
		WHERE
			"t2".NOT_HANDLED = 2 AND "t2".TRANS_CHANNEL IS NULL
	),
	IDF = (
		SELECT
			"channel_2"."Idf"
		FROM
			"Issue2815Table1" "t3"
				LEFT JOIN "Issue2815Table2" "source_2" ON "source_2".ISO = "t3".SRC_BIC
				LEFT JOIN "Issue2815Table2" "destination_2" ON "destination_2".ISO = "t3".DES_BIC
				LEFT JOIN "Issue2815Table3" "channel_2" ON "channel_2"."Id" = "Issue2815Table1"."Id" AND "channel_2"."TreasuryCenter" = "t3".TREA_CENT AND "channel_2".BIC = "t3".SRC_BIC AND "channel_2"."Sepa" = CASE
					WHEN "source_2".SEPA AND "destination_2".SEPA THEN CASE
						WHEN "source_2".ISO = "destination_2".ISO OR "source_2".ISO IS NULL AND "destination_2".ISO IS NULL
							THEN 0
						ELSE 1
					END
					ELSE 2
				END
		WHERE
			"t3".NOT_HANDLED = 2 AND "t3".TRANS_CHANNEL IS NULL
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue2815Table1" "t1"
				LEFT JOIN "Issue2815Table2" "source" ON "source".ISO = "t1".SRC_BIC
				LEFT JOIN "Issue2815Table2" "destination" ON "destination".ISO = "t1".DES_BIC
				LEFT JOIN "Issue2815Table3" "channel" ON "channel"."Id" = "Issue2815Table1"."Id" AND "channel"."TreasuryCenter" = "t1".TREA_CENT AND "channel".BIC = "t1".SRC_BIC AND "channel"."Sepa" = CASE
					WHEN "source".SEPA AND "destination".SEPA THEN CASE
						WHEN "source".ISO = "destination".ISO OR "source".ISO IS NULL AND "destination".ISO IS NULL
							THEN 0
						ELSE 1
					END
					ELSE 2
				END
		WHERE
			"t1".NOT_HANDLED = 2 AND "t1".TRANS_CHANNEL IS NULL
	)

