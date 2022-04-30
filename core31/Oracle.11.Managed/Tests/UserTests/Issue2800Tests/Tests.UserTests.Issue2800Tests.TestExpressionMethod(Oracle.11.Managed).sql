﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Car"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Car"
		(
			"Id"   Int         NOT NULL,
			"Name" VarChar(50)     NULL,

			CONSTRAINT "PK_Car" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "Car" ("Id", "Name") VALUES (1,'Special')
	INTO "Car" ("Id", "Name") VALUES (2,'NoSpecial')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	(x."Name" <> 'Special' OR x."Name" IS NULL)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" = 'Special'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	(x."Name" <> 'Special' OR x."Name" IS NULL)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" = 'Special'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Car"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

