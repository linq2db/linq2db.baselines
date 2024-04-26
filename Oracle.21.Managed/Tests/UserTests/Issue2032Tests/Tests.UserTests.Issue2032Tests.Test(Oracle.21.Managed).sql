BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2032Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2032Table"
		(
			"Id"       Int            NOT NULL,
			"Decimal1" Decimal(10, 4) NOT NULL,
			"Decimal2" Decimal(10, 4)     NULL,
			"Decimal3" Decimal(10, 4)     NULL,
			"Int1"     Int                NULL,
			"Int2"     Int                NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue2032Table" ("Id", "Decimal1", "Decimal2", "Decimal3", "Int1", "Int2") VALUES (1,123.456,NULL,NULL,NULL,NULL)
	INTO "Issue2032Table" ("Id", "Decimal1", "Decimal2", "Decimal3", "Int1", "Int2") VALUES (2,-123.456,678.903,3523.2352,-123,345)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Decimal1",
	CASE
		WHEN r."Decimal2" IS NOT NULL THEN r."Decimal2"
		ELSE 0
	END,
	r."Decimal3",
	CASE
		WHEN r."Int1" IS NOT NULL THEN r."Int1"
		ELSE 0
	END,
	r."Int2"
FROM
	"Issue2032Table" r
ORDER BY
	r."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2032Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

