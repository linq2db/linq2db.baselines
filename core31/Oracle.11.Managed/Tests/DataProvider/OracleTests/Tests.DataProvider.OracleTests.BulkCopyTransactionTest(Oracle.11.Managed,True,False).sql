BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE BULKCOPYTABLE
(
	ID Int NOT NULL
)

BeforeExecute
BeginTransaction
BeforeExecute
INSERT BULK BULKCOPYTABLE(ID)

BeforeExecute
RollbackTransaction
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE BULKCOPYTABLE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

