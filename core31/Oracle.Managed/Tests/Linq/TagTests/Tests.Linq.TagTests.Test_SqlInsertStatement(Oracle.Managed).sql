BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

/* My Test */
INSERT INTO "TestTable"
(
	"Id"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

