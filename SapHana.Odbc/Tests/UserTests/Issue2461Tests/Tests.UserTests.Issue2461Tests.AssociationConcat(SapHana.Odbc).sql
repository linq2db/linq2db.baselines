BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MRECEIPT"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "MRECEIPT"
(
	"RECEIPT_NO" NVarChar(255)     NULL,
	"CUSTKEY"    NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EXTERNAL_RECEIPTS"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "EXTERNAL_RECEIPTS"
(
	"RECEIPT_NO" NVarChar(255)     NULL,
	"CUSTKEY"    NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CUST_DTL"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CUST_DTL"
(
	"CUSTKEY"   NVarChar(255)     NULL,
	"BILLGROUP" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i_1"."ReceiptNo",
	"a_Customer"."BILLGROUP"
FROM
	(
		SELECT
			"i"."RECEIPT_NO" as "ReceiptNo",
			"i"."CUSTKEY" as "Custkey"
		FROM
			"MRECEIPT" "i"
		UNION ALL
		SELECT
			"t1"."RECEIPT_NO" as "ReceiptNo",
			"t1"."CUSTKEY" as "Custkey"
		FROM
			"EXTERNAL_RECEIPTS" "t1"
	) "i_1"
		LEFT JOIN "CUST_DTL" "a_Customer" ON "i_1"."Custkey" = "a_Customer"."CUSTKEY" AND "i_1"."Custkey" IS NOT NULL AND "a_Customer"."CUSTKEY" IS NOT NULL OR "i_1"."Custkey" IS NULL AND "a_Customer"."CUSTKEY" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CUST_DTL"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EXTERNAL_RECEIPTS"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MRECEIPT"

