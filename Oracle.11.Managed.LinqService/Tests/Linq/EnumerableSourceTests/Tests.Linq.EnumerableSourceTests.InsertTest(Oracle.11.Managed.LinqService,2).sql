BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	t1."Id",
	t1."Value"
FROM
	(
		SELECT 3 AS "Id", 'Janet' AS "Value" FROM sys.dual
		UNION ALL
		SELECT 4, 'Doe' FROM sys.dual) t1
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	t1."Id",
	t1."Value"
FROM
	(
		SELECT 3 AS "Id", 'Janet' AS "Value" FROM sys.dual
		UNION ALL
		SELECT 4, 'Doe' FROM sys.dual) t1
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

