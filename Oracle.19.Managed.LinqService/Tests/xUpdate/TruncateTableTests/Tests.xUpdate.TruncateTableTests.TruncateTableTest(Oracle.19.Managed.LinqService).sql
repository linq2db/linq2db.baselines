BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTrun"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

CREATE TABLE "TestTrun"
(
	ID       Int             NOT NULL,
	"Field1" Decimal(28, 10) NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

TRUNCATE TABLE "TestTrun"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

DROP TABLE "TestTrun"

