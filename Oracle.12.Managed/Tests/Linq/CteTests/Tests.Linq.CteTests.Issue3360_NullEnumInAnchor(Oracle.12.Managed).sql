﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360NullInAnchor"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3360NullInAnchor"
		(
			"Id"    Int         NOT NULL,
			"Guid"  Raw(16)         NULL,
			"Enum1" VarChar(50)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

WITH "cte" ("Id", "Enum1")
AS
(
	SELECT
		p."Id",
		NULL
	FROM
		"Issue3360NullInAnchor" p
	UNION ALL
	SELECT
		t1."Id",
		'THIS_IS_ONE'
	FROM
		"cte" t1
			INNER JOIN "Issue3360NullInAnchor" r ON t1."Id" = r."Id" + 100
)
SELECT
	t2."Id",
	t2."Enum1"
FROM
	"cte" t2

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360NullInAnchor"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

