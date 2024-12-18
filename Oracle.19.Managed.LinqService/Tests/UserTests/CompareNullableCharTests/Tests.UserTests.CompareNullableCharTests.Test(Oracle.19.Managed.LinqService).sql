BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Table1"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Table1"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Table1"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Table1"
		(
			"Field1" Int       NOT NULL,
			"Foeld2" NChar(1)      NULL,

			CONSTRAINT "PK_Table1" PRIMARY KEY ("Field1")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Table1"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Table1"
BEFORE INSERT ON "Table1" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Table1".NEXTVAL INTO :NEW."Field1" FROM dual;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	current_1."Field1",
	previous."Field1"
FROM
	"Table1" current_1,
	"Table1" previous
WHERE
	current_1."Foeld2" = previous."Foeld2" AND current_1."Foeld2" IS NOT NULL AND previous."Foeld2" IS NOT NULL OR
	current_1."Foeld2" IS NULL AND previous."Foeld2" IS NULL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Table1"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Table1"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Table1"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

