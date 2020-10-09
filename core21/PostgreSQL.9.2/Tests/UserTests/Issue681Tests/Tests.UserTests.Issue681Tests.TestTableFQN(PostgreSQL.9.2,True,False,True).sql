BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t1."ID"
FROM
	"public"."LinqDataTypes" t1

