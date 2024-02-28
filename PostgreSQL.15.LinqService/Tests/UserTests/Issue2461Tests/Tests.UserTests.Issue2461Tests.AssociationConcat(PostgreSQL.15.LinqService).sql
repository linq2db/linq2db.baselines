BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "MRECEIPT"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "MRECEIPT"
(
	"RECEIPT_NO" text     NULL,
	"CUSTKEY"    text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CUST_DTL"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "CUST_DTL"
(
	"CUSTKEY"   text     NULL,
	"BILLGROUP" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CUST_DTL"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "MRECEIPT"

