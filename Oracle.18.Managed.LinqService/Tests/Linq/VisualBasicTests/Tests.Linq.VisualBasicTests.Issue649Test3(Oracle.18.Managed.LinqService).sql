BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_activity649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_activity649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "activity649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "activity649"
		(
			"activityid" Int        NOT NULL,
			"personid"   Int        NOT NULL,
			"added"      timestamp  NOT NULL,

			CONSTRAINT "PK_activity649" PRIMARY KEY ("activityid")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_activity649"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_activity649"
BEFORE INSERT ON "activity649" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_activity649".NEXTVAL INTO :NEW."activityid" FROM dual;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_person649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_person649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "person649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "person649"
		(
			"personid"   Int           NOT NULL,
			"personname" VarChar(255)  NOT NULL,

			CONSTRAINT "PK_person649" PRIMARY KEY ("personid")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_person649"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_person649"
BEFORE INSERT ON "person649" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_person649".NEXTVAL INTO :NEW."personid" FROM dual;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	a_Person."personid",
	a_Person."personname",
	MAX(f."added")
FROM
	"activity649" f
		INNER JOIN "person649" a_Person ON f."personid" = a_Person."personid"
WHERE
	f."added" >= TO_TIMESTAMP('2017-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
GROUP BY
	a_Person."personid",
	a_Person."personname"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_person649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_person649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "person649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_activity649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_activity649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "activity649"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

