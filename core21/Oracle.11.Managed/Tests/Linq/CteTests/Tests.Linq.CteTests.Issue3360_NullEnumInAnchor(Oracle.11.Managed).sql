BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Issue3360NullInAnchor"
(
	"Id"    Int         NOT NULL,
	"Guid"  Raw(16)         NULL,
	"Enum1" VarChar(50)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
		p_1."Id",
		'THIS_IS_ONE'
	FROM
		"cte" p_1
			INNER JOIN "Issue3360NullInAnchor" r ON p_1."Id" = r."Id" + 100
)
SELECT
	t1."Id",
	t1."Enum1"
FROM
	"cte" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360NullInAnchor"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

