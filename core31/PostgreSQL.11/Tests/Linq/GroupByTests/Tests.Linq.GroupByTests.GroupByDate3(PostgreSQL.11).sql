BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Sum(t1."MoneyValue"),
	Cast(Floor(Extract(year from t1."Key_1")) as int),
	Cast(Floor(Extract(month from t1."Key_1")) as int)
FROM
	(
		SELECT
			Cast((Lpad(Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int)::text,4,'0') || '-' || Lpad(Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int)::text,2,'0') || '-01') as Date) as "Key_1",
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) t1
GROUP BY
	t1."Key_1"

