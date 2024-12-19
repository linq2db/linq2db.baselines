BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table"';
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
-- Oracle.23.Managed Oracle.Managed Oracle12

WITH "cte" ("Id", "Str")
AS
(
	SELECT
		p."Id",
		p."Str"
	FROM
		"Issue3360Table" p
	UNION ALL
	SELECT
		t1."Id",
		CAST('Str' AS VarChar(255))
	FROM
		"cte" t1,
		"Issue3360Table" r
	WHERE
		t1."Id" = r."Id" + 1
)
SELECT
	t2."Id",
	t2."Str"
FROM
	"cte" t2

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

