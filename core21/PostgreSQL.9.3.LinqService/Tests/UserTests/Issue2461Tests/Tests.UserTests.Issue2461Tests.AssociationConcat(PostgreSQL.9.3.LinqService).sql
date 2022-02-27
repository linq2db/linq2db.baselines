BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "MRECEIPT"
(
	"RECEIPT_NO" text     NULL,
	"CUSTKEY"    text     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "CUST_DTL"
(
	"CUSTKEY"   text     NULL,
	"BILLGROUP" text     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "CUST_DTL"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "MRECEIPT"

