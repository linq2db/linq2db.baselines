BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"Person" t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT 
	1
FROM
	"Person" t1
OFFSET :skip 

