﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithBool"';
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
		CREATE TABLE "WhereWithBool"
		(
			"Id"        Int     NOT NULL,
			"BoolValue" Char(1) NOT NULL,

			CONSTRAINT "PK_WhereWithBool" PRIMARY KEY ("Id")
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

INSERT ALL
	INTO "WhereWithBool" ("Id", "BoolValue") VALUES (1,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue"
FROM
	"WhereWithBool" t
WHERE
	(
		SELECT
			x."BoolValue"
		FROM
			"WhereWithBool" x
		WHERE
			x."Id" = 1
	) = 1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithBool"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

