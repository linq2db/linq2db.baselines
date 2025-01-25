BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_CustomerBase"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_CustomerBase"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "CustomerBase"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "CustomerBase"
		(
			"Id"           Int           NOT NULL,
			"ClientType"   VarChar(6)    NOT NULL,
			"Name"         VarChar(255)      NULL,
			"ContactEmail" VarChar(255)      NULL,
			"Enabled"      Char(1)           NULL,

			CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_CustomerBase"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_CustomerBase"
BEFORE INSERT ON "CustomerBase" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_CustomerBase".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	cb."Id",
	cb."Name",
	cb."ContactEmail",
	cb."Enabled"
FROM
	"CustomerBase" cb
WHERE
	cb."ClientType" = 'Client'

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_CustomerBase"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_CustomerBase"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "CustomerBase"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

