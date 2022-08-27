BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE BULKCOPYTABLE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE BULKCOPYTABLE
		(
			ID Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]

INSERT INTO BULKCOPYTABLE (ID) VALUES (:p1)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 4

SELECT
	x.ID
FROM
	BULKCOPYTABLE x
WHERE
	x.ID <> :id

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE BULKCOPYTABLE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

