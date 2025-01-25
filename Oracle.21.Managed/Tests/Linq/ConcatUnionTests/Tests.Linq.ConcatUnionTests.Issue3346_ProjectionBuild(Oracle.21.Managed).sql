BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPerson"';
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
		CREATE TABLE "ComplexPerson"
		(
			"Id"        Int          NOT NULL,
			"FirstName" VarChar(255)     NULL,
			"LastName"  VarChar(255)     NULL,

			CONSTRAINT "PK_ComplexPerson" PRIMARY KEY ("Id")
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

SELECT
	x."Id",
	x."FirstName",
	x."LastName"
FROM
	"ComplexPerson" x
WHERE
	x."Id" < 10
UNION
SELECT
	x_1."Id",
	x_1."FirstName",
	x_1."LastName"
FROM
	"ComplexPerson" x_1
WHERE
	x_1."Id" < 20

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPerson"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

