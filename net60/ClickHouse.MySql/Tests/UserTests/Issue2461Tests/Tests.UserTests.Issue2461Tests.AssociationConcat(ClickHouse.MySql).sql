BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MRECEIPT

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS MRECEIPT
(
	RECEIPT_NO Nullable(String),
	CUSTKEY    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CUST_DTL

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CUST_DTL
(
	CUSTKEY   Nullable(String),
	BILLGROUP Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CUST_DTL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MRECEIPT

