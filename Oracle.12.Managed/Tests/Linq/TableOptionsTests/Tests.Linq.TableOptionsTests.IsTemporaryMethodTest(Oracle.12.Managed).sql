﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "TestTable"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL
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
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value",
	t2."Id",
	t2."Value",
	t3."Id",
	t3."Value"
FROM
	"TestTable" t1
		INNER JOIN "TestTable" t2 ON t1."Id" = t2."Id"
		INNER JOIN "TestTable" t3 ON t2."Id" = t3."Id"

BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

