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
	t1."Value_1"
FROM
	"Issue4160Person" pe
		LEFT JOIN (
			SELECT
				cc."Name" as "Value_1",
				ROW_NUMBER() OVER (PARTITION BY cc."Code" ORDER BY cc."Code") as "rn",
				cc."Code"
			FROM
				"Issue4160City" cc
		) t1 ON (t1."Code" = pe."Code" AND t1."Code" IS NOT NULL AND pe."Code" IS NOT NULL OR t1."Code" IS NULL AND pe."Code" IS NULL) AND t1."rn" <= 1

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

