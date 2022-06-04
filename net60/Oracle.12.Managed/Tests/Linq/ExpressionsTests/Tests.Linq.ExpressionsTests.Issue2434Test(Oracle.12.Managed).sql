﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE "Issue2434Table"
(
	"Id"        Int          NOT NULL,
	"FirstName" VarChar(255)     NULL,
	"LastName"  VarChar(255)     NULL
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName",
	t1."FirstName" || ' ' || t1."LastName"
FROM
	"Issue2434Table" t1
ORDER BY
	t1."FirstName" || ' ' || t1."LastName"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2434Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

