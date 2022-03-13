BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Issue3360Table"
(
	"Id"  Int          NOT NULL,
	"Str" VarChar(255)     NULL,

	CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

WITH "cte" ("Id", "Str")
AS
(
	SELECT
		p."Id",
		'Str1'
	FROM
		"Issue3360Table" p
	UNION ALL
	SELECT
		p_1."Id",
		'Str2'
	FROM
		"cte" p_1
			INNER JOIN "Issue3360Table" r ON p_1."Id" = r."Id" + 1
)
SELECT
	t1."Id",
	t1."Str"
FROM
	"cte" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

