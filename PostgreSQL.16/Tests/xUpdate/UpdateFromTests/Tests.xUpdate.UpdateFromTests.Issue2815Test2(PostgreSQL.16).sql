BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"Issue2815Table1"
SET
	"TRANS_CHANNEL" = channel."Trans_Channel",
	"IDF" = channel."Idf"
FROM
	"Issue2815Table2" source,
	"Issue2815Table2" destination,
	"Issue2815Table3" channel
WHERE
	"Issue2815Table1"."NOT_HANDLED" = 2 AND
	"Issue2815Table1"."TRANS_CHANNEL" IS NULL AND
	source."ISO" = "Issue2815Table1"."SRC_BIC" AND
	destination."ISO" = "Issue2815Table1"."DES_BIC" AND
	channel."TreasuryCenter" = "Issue2815Table1"."TREA_CENT" AND
	channel."BIC" = "Issue2815Table1"."SRC_BIC" AND
	channel."Sepa" = CASE
		WHEN source."SEPA" AND destination."SEPA" THEN CASE
			WHEN source."ISO" = destination."ISO" THEN 0
			ELSE 1
		END
		ELSE 2
	END

