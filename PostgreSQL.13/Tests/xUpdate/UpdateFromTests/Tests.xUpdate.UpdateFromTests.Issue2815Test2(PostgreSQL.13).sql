-- PostgreSQL.13 PostgreSQL

UPDATE
	"Issue2815Table1"
SET
	"TRANS_CHANNEL" = Coalesce(channel."Trans_Channel", 1),
	"IDF" = Coalesce(channel."Idf", 0)
FROM
	"Issue2815Table1" t1
		LEFT JOIN "Issue2815Table2" source ON source."ISO" = t1."SRC_BIC"
		LEFT JOIN "Issue2815Table2" destination ON destination."ISO" = t1."DES_BIC"
		LEFT JOIN "Issue2815Table3" channel ON channel."TreasuryCenter" = t1."TREA_CENT" AND channel."BIC" = t1."SRC_BIC" AND channel."Sepa" = CASE
			WHEN source."SEPA" AND destination."SEPA" THEN CASE
				WHEN source."ISO" = destination."ISO" OR source."ISO" IS NULL AND destination."ISO" IS NULL
					THEN 0
				ELSE 1
			END
			ELSE 2
		END
WHERE
	t1."NOT_HANDLED" = 2 AND t1."TRANS_CHANNEL" IS NULL AND
	"Issue2815Table1"."Id" = t1."Id"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."SRC_BIC",
	t1."DES_BIC",
	t1."IDF",
	t1."TREA_CENT",
	t1."NOT_HANDLED",
	t1."TRANS_CHANNEL"
FROM
	"Issue2815Table1" t1
ORDER BY
	t1."SRC_BIC",
	t1."DES_BIC"

