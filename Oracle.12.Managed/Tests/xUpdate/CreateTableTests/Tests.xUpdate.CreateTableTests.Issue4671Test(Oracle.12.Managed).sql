-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "Issue4671EntityTMP"
		(
			"Id"    Int  NOT NULL,
			"Value" Int  NOT NULL,

			CONSTRAINT "PK_Issue4671EntityTMP" PRIMARY KEY ("Id")
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Issue4671EntityTMP"

-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Issue4671EntityTMP"
BEFORE INSERT ON "Issue4671EntityTMP" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Issue4671EntityTMP".NEXTVAL INTO :NEW."Id" FROM dual;
END;

-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT INTO "Issue4671Entity"
(
	"Value"
)
VALUES
(
	1
)

-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT INTO "Issue4671EntityTMP"
(
	"Value"
)
VALUES
(
	2
)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"Issue4671Entity" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"Issue4671EntityTMP" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Issue4671EntityTMP"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Issue4671EntityTMP"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Issue4671EntityTMP"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

