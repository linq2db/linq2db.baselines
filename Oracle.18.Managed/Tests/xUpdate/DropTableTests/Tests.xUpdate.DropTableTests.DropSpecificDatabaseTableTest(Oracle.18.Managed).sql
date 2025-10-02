BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO SYSTEM."DropTableTest"
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	SYSTEM."DropTableTest" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DROP TABLE SYSTEM."DropTableTest"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	SYSTEM."DropTableTest" t1

