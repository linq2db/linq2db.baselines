BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	sys_context('userenv', 'current_schema')
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO TEST."DropTableTest"
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	TEST."DropTableTest" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

DROP TABLE TEST."DropTableTest"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	TEST."DropTableTest" t1

