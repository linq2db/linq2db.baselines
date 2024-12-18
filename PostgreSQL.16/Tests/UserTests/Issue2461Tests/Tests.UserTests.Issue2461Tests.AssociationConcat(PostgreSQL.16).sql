﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "MRECEIPT"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "MRECEIPT"
(
	"RECEIPT_NO" text     NULL,
	"CUSTKEY"    text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EXTERNAL_RECEIPTS"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "EXTERNAL_RECEIPTS"
(
	"RECEIPT_NO" text     NULL,
	"CUSTKEY"    text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CUST_DTL"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "CUST_DTL"
(
	"CUSTKEY"   text     NULL,
	"BILLGROUP" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	i_1."ReceiptNo",
	"a_Customer"."BILLGROUP"
FROM
	(
		SELECT
			i."RECEIPT_NO" as "ReceiptNo",
			i."CUSTKEY" as "Custkey"
		FROM
			"MRECEIPT" i
		UNION ALL
		SELECT
			t1."RECEIPT_NO" as "ReceiptNo",
			t1."CUSTKEY" as "Custkey"
		FROM
			"EXTERNAL_RECEIPTS" t1
	) i_1
		LEFT JOIN "CUST_DTL" "a_Customer" ON i_1."Custkey" = "a_Customer"."CUSTKEY" AND i_1."Custkey" IS NOT NULL AND "a_Customer"."CUSTKEY" IS NOT NULL OR i_1."Custkey" IS NULL AND "a_Customer"."CUSTKEY" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CUST_DTL"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EXTERNAL_RECEIPTS"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "MRECEIPT"

