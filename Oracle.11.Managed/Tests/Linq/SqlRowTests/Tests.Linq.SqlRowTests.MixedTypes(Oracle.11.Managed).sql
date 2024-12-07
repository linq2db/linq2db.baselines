BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Mixed"';
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
		CREATE TABLE "Mixed"
		(
			"Int"    Int          NOT NULL,
			"Str"    VarChar(255)     NULL,
			"Date"   timestamp    NOT NULL,
			"Double" Float        NOT NULL,
			"Bool"   Char(1)      NOT NULL
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
	INTO "Mixed" ("Int", "Str", "Date", "Double", "Bool") VALUES (1,'One',TIMESTAMP '2001-01-01 00:00:00.000000',1D,1)
	INTO "Mixed" ("Int", "Str", "Date", "Double", "Bool") VALUES (2,'Two',TIMESTAMP '2002-02-02 00:00:00.000000',2D,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Mixed" t
WHERE
	t."Int" > 0 AND (t."Str", t."Double", t."Bool") = (('One', 1D, 1)) AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" u
		WHERE
			2 > u."Int" OR 2 = u."Int" AND u."Date" > t."Date"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Mixed"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

