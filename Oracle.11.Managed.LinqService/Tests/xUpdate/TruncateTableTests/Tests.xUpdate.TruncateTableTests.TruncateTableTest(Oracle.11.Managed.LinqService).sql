BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTrun"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

CREATE TABLE "TestTrun"
(
	ID       Int             NOT NULL,
	"Field1" Decimal(28, 10) NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

TRUNCATE TABLE "TestTrun"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

DROP TABLE "TestTrun"

