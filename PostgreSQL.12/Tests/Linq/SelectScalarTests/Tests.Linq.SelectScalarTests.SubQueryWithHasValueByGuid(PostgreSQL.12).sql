BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
WHERE
	(
		SELECT
			CASE
				WHEN r."GuidValue" IS NOT NULL THEN True
				ELSE False
			END
		FROM
			"LinqDataTypes" r
		LIMIT 1
	) = True

