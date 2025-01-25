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

DROP TABLE IF EXISTS EXTERNAL_RECEIPTS

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EXTERNAL_RECEIPTS
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

SELECT
	i_1.ReceiptNo,
	a_Customer.BILLGROUP
FROM
	(
		SELECT
			i.RECEIPT_NO as ReceiptNo,
			i.CUSTKEY as Custkey
		FROM
			MRECEIPT i
		UNION ALL
		SELECT
			t1.RECEIPT_NO as ReceiptNo,
			t1.CUSTKEY as Custkey
		FROM
			EXTERNAL_RECEIPTS t1
	) i_1
		LEFT JOIN CUST_DTL a_Customer ON (i_1.Custkey = a_Customer.CUSTKEY OR i_1.Custkey IS NULL AND a_Customer.CUSTKEY IS NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CUST_DTL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EXTERNAL_RECEIPTS

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MRECEIPT

