-- Oracle.21.Managed Oracle.Managed Oracle12

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

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "TestTable"
(
	ID          Int           NOT NULL,
	"Field1"    VarChar(50)       NULL,
	"Field2"    VarChar(255)      NULL,
	"CreatedOn" timestamp         NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY (ID)
)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_TestTable"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_TestTable"
BEFORE INSERT ON "TestTable" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_TestTable".NEXTVAL INTO :NEW.ID FROM dual;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Field1",
	t1."Field2",
	t1."CreatedOn"
FROM
	"TestTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TestTable"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TestTable"';
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
END;

