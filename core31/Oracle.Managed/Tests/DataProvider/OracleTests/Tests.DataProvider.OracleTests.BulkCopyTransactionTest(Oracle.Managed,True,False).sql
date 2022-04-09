BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE BULKCOPYTABLE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

