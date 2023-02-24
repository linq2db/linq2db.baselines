﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithString"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "WhereWithString"
		(
			"Id"          Int          NOT NULL,
			"StringValue" VarChar(255)     NULL,

			CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "WhereWithString" ("Id", "StringValue") VALUES (1,'Str1')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	x."StringValue" LIKE '%Str%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithString"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

