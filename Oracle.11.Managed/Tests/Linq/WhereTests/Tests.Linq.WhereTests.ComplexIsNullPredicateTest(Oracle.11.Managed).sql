BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPredicate"';
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
		CREATE TABLE "ComplexPredicate"
		(
			"Id"    Int          NOT NULL,
			"Value" VarChar(255)     NULL
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
	INTO "ComplexPredicate" ("Id", "Value") VALUES (1,NULL)
	INTO "ComplexPredicate" ("Id", "Value") VALUES (2,'other')
	INTO "ComplexPredicate" ("Id", "Value") VALUES (3,'123')
	INTO "ComplexPredicate" ("Id", "Value") VALUES (4,'test')
	INTO "ComplexPredicate" ("Id", "Value") VALUES (5,'1')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."Value"
FROM
	"ComplexPredicate" r
WHERE
	CASE
		WHEN r."Value" = '123' THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value" = '1' OR r."Value" = 'test' AND (r."Value" <> '1' OR r."Value" IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	r."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"ComplexPredicate" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPredicate"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

