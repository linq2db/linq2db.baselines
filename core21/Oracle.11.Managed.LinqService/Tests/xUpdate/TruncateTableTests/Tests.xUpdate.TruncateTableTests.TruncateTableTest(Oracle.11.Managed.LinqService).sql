BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE TestTrun';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE TestTrun
(
	ID     Int     NOT NULL,
	Field1 Decimal NOT NULL,

	CONSTRAINT PK_TestTrun PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

TRUNCATE TABLE TestTrun

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TestTrun

