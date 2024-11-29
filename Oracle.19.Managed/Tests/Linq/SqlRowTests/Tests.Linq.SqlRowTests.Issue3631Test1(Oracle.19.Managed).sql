BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3631Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3631Table"
		(
			"Country" VarChar(2) NOT NULL,
			"State"   VarChar(2) NOT NULL
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

INSERT ALL
	INTO "Issue3631Table" ("Country", "State") VALUES ('US','AL')
	INTO "Issue3631Table" ("Country", "State") VALUES ('US','AZ')
	INTO "Issue3631Table" ("Country", "State") VALUES ('US','CA')
	INTO "Issue3631Table" ("Country", "State") VALUES ('US','FL')
	INTO "Issue3631Table" ("Country", "State") VALUES ('US','IN')
	INTO "Issue3631Table" ("Country", "State") VALUES ('US','OH')
	INTO "Issue3631Table" ("Country", "State") VALUES ('US','NY')
	INTO "Issue3631Table" ("Country", "State") VALUES ('CA','AB')
	INTO "Issue3631Table" ("Country", "State") VALUES ('CA','ON')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Country",
	x."State"
FROM
	"Issue3631Table" x
WHERE
	(x."Country", x."State") IN (('US', 'CA'), ('US', 'NY'))

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3631Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

