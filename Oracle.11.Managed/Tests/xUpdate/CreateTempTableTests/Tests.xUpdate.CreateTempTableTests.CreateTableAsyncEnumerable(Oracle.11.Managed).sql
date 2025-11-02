-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID"
FROM
	"Parent" p

-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TempTable"
		(
			ID Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "TempTable" (ID) VALUES (1)
	INTO "TempTable" (ID) VALUES (2)
	INTO "TempTable" (ID) VALUES (3)
	INTO "TempTable" (ID) VALUES (4)
	INTO "TempTable" (ID) VALUES (5)
	INTO "TempTable" (ID) VALUES (6)
	INTO "TempTable" (ID) VALUES (7)
SELECT * FROM dual

-- Oracle.11.Managed Oracle11

SELECT
	t.ID
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t.ID

-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

