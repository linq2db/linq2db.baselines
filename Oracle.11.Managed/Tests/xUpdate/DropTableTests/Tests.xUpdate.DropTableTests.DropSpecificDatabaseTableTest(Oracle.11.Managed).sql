-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.11.Managed Oracle11

SELECT
	sys_context('userenv', 'current_schema')
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL
)

-- Oracle.11.Managed Oracle11

INSERT INTO TEST."DropTableTest"
(
	ID
)
VALUES
(
	123
)

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	TEST."DropTableTest" t1

-- Oracle.11.Managed Oracle11

DROP TABLE TEST."DropTableTest"

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	TEST."DropTableTest" t1

