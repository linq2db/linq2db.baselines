BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	t1."Key_1", 
	Count(*)
FROM
	( 
		SELECT 
			Cast("selectParam"."DateTimeValue" as Date) as "Key_1"
		FROM
			"LinqDataTypes" "selectParam"
				INNER JOIN "Parent" p ON "selectParam"."ID" = p."ParentID"
	) t1
GROUP BY
	t1."Key_1"

