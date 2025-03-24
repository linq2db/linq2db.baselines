﻿BeforeExecute
--  Oracle.11.Managed Oracle11

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

BeforeExecute
--  Oracle.11.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_Issue4671EntityTMP"

BeforeExecute
--  Oracle.11.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_Issue4671EntityTMP"
BEFORE INSERT ON "Issue4671EntityTMP" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Issue4671EntityTMP".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
--  Oracle.11.Managed Oracle11

INSERT INTO "Issue4671Entity"
(
	"Value"
)
VALUES
(
	1
)

BeforeExecute
--  Oracle.11.Managed Oracle11

INSERT INTO "Issue4671EntityTMP"
(
	"Value"
)
VALUES
(
	2
)

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue4671Entity" t1
WHERE
	ROWNUM <= 2

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue4671EntityTMP" t1
WHERE
	ROWNUM <= 2

BeforeExecute
--  Oracle.11.Managed Oracle11

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

