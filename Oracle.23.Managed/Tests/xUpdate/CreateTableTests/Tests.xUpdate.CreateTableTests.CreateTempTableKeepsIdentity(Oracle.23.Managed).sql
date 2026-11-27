-- Oracle.23.Managed Oracle.Managed Oracle12
BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "TempIdentityRowTMP"
		(
			"Id"    Int  NOT NULL,
			"Value" Int  NOT NULL,

			CONSTRAINT "PK_TempIdentityRowTMP" PRIMARY KEY ("Id")
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12
CREATE SEQUENCE "SIDENTITY_TempIdentityRowTMP"

-- Oracle.23.Managed Oracle.Managed Oracle12
CREATE OR REPLACE TRIGGER "TIDENTITY_TempIdentityRowTMP"
BEFORE INSERT ON "TempIdentityRowTMP" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_TempIdentityRowTMP".NEXTVAL INTO :NEW."Id" FROM dual;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "TempIdentityRow"
(
	"Value"
)
VALUES
(
	1
)

-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "TempIdentityRowTMP"
(
	"Value"
)
VALUES
(
	2
)

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TempIdentityRow" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TempIdentityRowTMP" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'TRUNCATE TABLE "TempIdentityRowTMP"';
	EXCEPTION
		WHEN OTHERS THEN
			NULL;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TempIdentityRowTMP"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TempIdentityRowTMP"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "TempIdentityRowTMP"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

