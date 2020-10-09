BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE TempTable';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

CREATE TABLE TempTable
(
	ID Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

INSERT INTO TempTable
(
	ID
)
SELECT 
	p.ParentID
FROM
	Parent p

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

DROP TABLE TempTable

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TempTable

