BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TableWithIdentitySrc"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TableWithIdentitySrc"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "TableWithIdentitySrc"';
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
		CREATE TABLE "TableWithIdentitySrc"
		(
			"Id"    Int  NOT NULL,
			"Value" Int  NOT NULL,

			CONSTRAINT "PK_TableWithIdentitySrc" PRIMARY KEY ("Id")
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

CREATE SEQUENCE "SIDENTITY_TableWithIdentitySrc"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_TableWithIdentitySrc"
BEFORE INSERT ON "TableWithIdentitySrc" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_TableWithIdentitySrc".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TableWithIdentity"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TableWithIdentity"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "TableWithIdentity"';
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
		CREATE TABLE "TableWithIdentity"
		(
			"Id"    Int  NOT NULL,
			"Value" Int  NOT NULL,

			CONSTRAINT "PK_TableWithIdentity" PRIMARY KEY ("Id")
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

CREATE SEQUENCE "SIDENTITY_TableWithIdentity"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_TableWithIdentity"
BEFORE INSERT ON "TableWithIdentity" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_TableWithIdentity".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO "TableWithIdentitySrc"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	t1."Value" + 123
FROM
	"TableWithIdentitySrc" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TableWithIdentity"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TableWithIdentity"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "TableWithIdentity"';
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
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TableWithIdentitySrc"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TableWithIdentitySrc"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "TableWithIdentitySrc"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

