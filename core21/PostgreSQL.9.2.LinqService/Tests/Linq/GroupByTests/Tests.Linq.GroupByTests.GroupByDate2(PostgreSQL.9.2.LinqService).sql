BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Sum(t1."MoneyValue"), 
	t1."Key_2", 
	t1."Key_1"
FROM
	( 
		SELECT 
			Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as "Key_1", 
			Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as "Key_2", 
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) t1
GROUP BY
	t1."Key_1",
	t1."Key_2"

