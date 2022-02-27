BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE MRECEIPT
(
	RECEIPT_NO VarChar(255)     NULL,
	CUSTKEY    VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE CUST_DTL
(
	CUSTKEY   VarChar(255)     NULL,
	BILLGROUP VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE CUST_DTL

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE MRECEIPT

