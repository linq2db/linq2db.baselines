﻿BeforeExecute
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
DECLARE @filter_1 Varchar2(6) -- String
SET     @filter_1 = '%test%'
DECLARE @filter_2 Varchar2(6) -- String
SET     @filter_2 = '%test%'

SELECT
	q."Id",
	q."Name",
	q."ContactEmail",
	Nvl(q."Enabled", 0)
FROM
	"CustomerBase" q
WHERE
	q."ClientType" = 'Client' AND (q."Name" LIKE :filter_1 ESCAPE '~' OR q."ContactEmail" LIKE :filter_2 ESCAPE '~')

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

