﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TempTable"
		(
			"Name" VarChar(20) NOT NULL,

			CONSTRAINT "PK_TempTable" PRIMARY KEY ("Name")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "TempTable" ("Name") VALUES ('John')
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

