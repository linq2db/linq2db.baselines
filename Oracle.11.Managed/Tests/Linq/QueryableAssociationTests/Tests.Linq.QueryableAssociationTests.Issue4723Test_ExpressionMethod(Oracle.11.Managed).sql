BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t2."Id",
	t1."ExpressionMethod"
FROM
	"Issue4723Table1" t2
		LEFT JOIN (
			SELECT
				se."Value" as "ExpressionMethod",
				ROW_NUMBER() OVER (PARTITION BY se."Id" ORDER BY se."Id") as "rn",
				se."Id"
			FROM
				"Issue4723Table2" se
		) t1 ON t1."Id" = t2."Id" AND t1."rn" <= 1

