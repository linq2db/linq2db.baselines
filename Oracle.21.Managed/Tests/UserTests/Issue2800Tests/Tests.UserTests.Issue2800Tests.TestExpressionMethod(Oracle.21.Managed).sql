BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Car"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Car" ("Id", "Name") VALUES (1,'Special')
	INTO "Car" ("Id", "Name") VALUES (2,'NoSpecial')
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	(x."Name" <> 'Special' OR x."Name" IS NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" = 'Special'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	(x."Name" <> 'Special' OR x."Name" IS NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" = 'Special'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Car"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

