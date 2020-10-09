BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_TestIdTrun';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_TestIdTrun';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE TestIdTrun';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE TestIdTrun
(
	ID     Int      NOT NULL,
	Field1 Decimal  NOT NULL,

	CONSTRAINT PK_TestIdTrun PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE SIDENTITY_TestIdTrun

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER TIDENTITY_TestIdTrun
BEFORE INSERT ON TestIdTrun FOR EACH ROW
BEGIN
	SELECT SIDENTITY_TestIdTrun.NEXTVAL INTO :NEW.ID FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ID, 
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.Managed Oracle12

TRUNCATE TABLE TestIdTrun

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ID, 
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_TestIdTrun';
	EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_TestIdTrun';
	EXECUTE IMMEDIATE 'DROP TABLE TestIdTrun';
END;

