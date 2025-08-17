BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue681Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

CREATE TABLE "Issue681Table2"@ORC12
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue681Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

