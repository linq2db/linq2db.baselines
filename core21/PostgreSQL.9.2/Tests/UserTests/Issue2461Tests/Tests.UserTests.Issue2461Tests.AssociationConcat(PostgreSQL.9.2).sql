BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "MRECEIPT"
(
	"RECEIPT_NO" text     NULL,
	"CUSTKEY"    text     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "CUST_DTL"
(
	"CUSTKEY"   text     NULL,
	"BILLGROUP" text     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "CUST_DTL"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "MRECEIPT"

