BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MRECEIPT

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS MRECEIPT
(
	RECEIPT_NO NVarChar(255)     NULL,
	CUSTKEY    NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CUST_DTL

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CUST_DTL
(
	CUSTKEY   NVarChar(255)     NULL,
	BILLGROUP NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CUST_DTL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MRECEIPT

