BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE BULKCOPYTABLE
(
	ID Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	user
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
INSERT BULK SYSTEM.BULKCOPYTABLE(ID)

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

