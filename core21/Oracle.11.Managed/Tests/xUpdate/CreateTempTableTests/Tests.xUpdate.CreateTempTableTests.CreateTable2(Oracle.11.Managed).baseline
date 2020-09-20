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
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE TempTable
(
	ID Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TempTable

