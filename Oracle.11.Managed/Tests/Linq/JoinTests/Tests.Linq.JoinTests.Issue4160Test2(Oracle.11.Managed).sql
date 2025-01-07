BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4160Person"
		(
			"Code" VarChar(255)     NULL
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

INSERT ALL
	INTO "Issue4160Person" ("Code") VALUES ('SD')
	INTO "Issue4160Person" ("Code") VALUES ('SD')
	INTO "Issue4160Person" ("Code") VALUES ('SH')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160City"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4160City"
		(
			"Code" VarChar(255)     NULL,
			"Name" VarChar(255)     NULL
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

INSERT ALL
	INTO "Issue4160City" ("Code", "Name") VALUES ('SD','SYDNEY')
	INTO "Issue4160City" ("Code", "Name") VALUES ('SD','SUNDAY')
	INTO "Issue4160City" ("Code", "Name") VALUES ('SH','SYDHIP')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT DISTINCT
	cc_1."Name"
FROM
	"Issue4160Person" t1
		LEFT JOIN (
			SELECT
				cc."Name",
				ROW_NUMBER() OVER (PARTITION BY cc."Code" ORDER BY cc."Code") as "rn",
				cc."Code"
			FROM
				"Issue4160City" cc
		) cc_1 ON (cc_1."Code" = t1."Code" OR cc_1."Code" IS NULL AND t1."Code" IS NULL) AND cc_1."rn" <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160City"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

