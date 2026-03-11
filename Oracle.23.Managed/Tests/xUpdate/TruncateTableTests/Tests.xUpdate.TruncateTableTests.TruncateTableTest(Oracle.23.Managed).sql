-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTrun"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE TABLE "TestTrun"
(
	ID       Int             NOT NULL,
	"Field1" Decimal(28, 10) NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY (ID)
)

-- Oracle.23.Managed Oracle.Managed Oracle12

TRUNCATE TABLE "TestTrun"

-- Oracle.23.Managed Oracle.Managed Oracle12

DROP TABLE "TestTrun"

