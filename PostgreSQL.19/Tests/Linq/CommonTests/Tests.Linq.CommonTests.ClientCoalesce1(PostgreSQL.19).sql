-- PostgreSQL.19 PostgreSQL12
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100

SELECT
	x."Value1"
FROM
	"Parent" x
WHERE
	Coalesce(x."Value1", :Value1) > 10

-- PostgreSQL.19 PostgreSQL12
SELECT
	p."Value1"
FROM
	"Parent" p

