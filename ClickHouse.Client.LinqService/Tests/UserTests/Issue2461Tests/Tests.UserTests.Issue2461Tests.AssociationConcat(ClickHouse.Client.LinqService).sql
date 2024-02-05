BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MRECEIPT

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MRECEIPT
(
	RECEIPT_NO Nullable(String),
	CUSTKEY    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CUST_DTL

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CUST_DTL
(
	CUSTKEY   Nullable(String),
	BILLGROUP Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CUST_DTL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MRECEIPT

