-- Oracle.11.Managed Oracle11

SELECT
	ROW_NUMBER() OVER (ORDER BY item_1."Id") - 1,
	item_1."Id",
	item_1."TestId"
FROM
	"TestTable" item_1
WHERE
	item_1."TestId" <> 20
ORDER BY
	item_1."Id"

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."TestId"
FROM
	"TestTable" t1

