BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE MRECEIPT
(
	RECEIPT_NO VarChar(255)     NULL,
	CUSTKEY    VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CUST_DTL
(
	CUSTKEY   VarChar(255)     NULL,
	BILLGROUP VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CUST_DTL';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE MRECEIPT';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

