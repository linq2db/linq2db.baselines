-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	row_1."Id",
	'ROOT_AMT'::text,
	row_1."ROOT_AMT"
FROM
	"NestedAmounts" row_1
WHERE
	row_1."ROOT_AMT" IS NOT NULL
UNION ALL
SELECT
	row_2."Id",
	'SHIP_AMT'::text,
	row_2."SHIP_AMT"
FROM
	"NestedAmounts" row_2
WHERE
	row_2."SHIP_AMT" IS NOT NULL
UNION ALL
SELECT
	row_3."Id",
	'BILL_AMT'::text,
	row_3."BILL_AMT"
FROM
	"NestedAmounts" row_3
WHERE
	row_3."BILL_AMT" IS NOT NULL

