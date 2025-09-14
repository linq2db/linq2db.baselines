﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "TestTable"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL,

			CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

