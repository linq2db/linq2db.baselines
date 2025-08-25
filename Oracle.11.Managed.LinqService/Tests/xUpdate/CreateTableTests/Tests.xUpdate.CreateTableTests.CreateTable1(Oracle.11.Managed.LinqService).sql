BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TestTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TestTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

CREATE TABLE "TestTable"
(
	ID          Int           NOT NULL,
	"Field1"    VarChar(50)       NULL,
	"Field2"    VarChar(255)      NULL,
	"CreatedOn" timestamp         NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

CREATE SEQUENCE "SIDENTITY_TestTable"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

CREATE OR REPLACE TRIGGER "TIDENTITY_TestTable"
BEFORE INSERT ON "TestTable" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_TestTable".NEXTVAL INTO :NEW.ID FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1.ID,
	t1."Field1",
	t1."Field2",
	t1."CreatedOn"
FROM
	"TestTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TestTable"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TestTable"';
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
END;

