BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Sum(grp_1."MoneyValue"),
	grp_1."Year_1",
	grp_1."Month_1"
FROM
	(
		SELECT
			Cast((Lpad(Cast(Floor(Extract(year from grp."DateTimeValue")) as int)::text,4,'0') || '-' || Lpad(Cast(Floor(Extract(month from grp."DateTimeValue")) as int)::text,2,'0') || '-01') as Date) as c1,
			grp."MoneyValue",
			Cast(Floor(Extract(year from Cast((Lpad(Cast(Floor(Extract(year from grp."DateTimeValue")) as int)::text,4,'0') || '-' || Lpad(Cast(Floor(Extract(month from grp."DateTimeValue")) as int)::text,2,'0') || '-01') as Date))) as int) as "Year_1",
			Cast(Floor(Extract(month from Cast((Lpad(Cast(Floor(Extract(year from grp."DateTimeValue")) as int)::text,4,'0') || '-' || Lpad(Cast(Floor(Extract(month from grp."DateTimeValue")) as int)::text,2,'0') || '-01') as Date))) as int) as "Month_1"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1.c1,
	grp_1."Year_1",
	grp_1."Month_1"

