BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue3360WithEnum"
(
	"Id"  Int         NOT NULL,
	"Str" VarChar(50) NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

WITH "cte" ("Id", "Str")
AS
(
	SELECT
		p."Id",
		p."Str"
	FROM
		"Issue3360WithEnum" p
	UNION ALL
	SELECT
		p_1."Id",
		'THIS_IS_TWO'
	FROM
		"cte" p_1
			INNER JOIN "Issue3360WithEnum" r ON p_1."Id" = r."Id" + 1
)
SELECT
	t1."Id",
	t1."Str"
FROM
	"cte" t1

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360WithEnum"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

