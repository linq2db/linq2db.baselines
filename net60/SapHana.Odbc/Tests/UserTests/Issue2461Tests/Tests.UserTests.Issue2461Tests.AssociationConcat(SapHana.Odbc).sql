BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "MRECEIPT"
(
	"RECEIPT_NO" NVarChar(255)     NULL,
	"CUSTKEY"    NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CUST_DTL"
(
	"CUSTKEY"   NVarChar(255)     NULL,
	"BILLGROUP" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CUST_DTL"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MRECEIPT"

