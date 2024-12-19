BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table"';
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
		CREATE TABLE "Issue3360Table"
		(
			"Id"  Int          NOT NULL,
			"Str" VarChar(255)     NULL,

			CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
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
	p."Id",
	p."Str"
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	CAST('str' AS VarChar(255))
FROM
	"Issue3360Table" p_1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."Id",
	CAST('str' AS VarChar(255))
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	p_1."Str"
FROM
	"Issue3360Table" p_1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

