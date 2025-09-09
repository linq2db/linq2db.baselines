BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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
		SELECT 2 AS "Id", 'Janet' AS "Value" FROM sys.dual
		UNION ALL
		SELECT 3, 'Doe' FROM sys.dual) t1
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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
		SELECT 2 AS "Id", 'Janet' AS "Value" FROM sys.dual
		UNION ALL
		SELECT 3, 'Doe' FROM sys.dual) t1
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

