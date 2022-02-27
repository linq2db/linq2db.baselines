BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE TestTrun';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE TestTrun
(
	ID     Int     NOT NULL,
	Field1 Decimal NOT NULL,

	CONSTRAINT PK_TestTrun PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12

TRUNCATE TABLE TestTrun

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE TestTrun

