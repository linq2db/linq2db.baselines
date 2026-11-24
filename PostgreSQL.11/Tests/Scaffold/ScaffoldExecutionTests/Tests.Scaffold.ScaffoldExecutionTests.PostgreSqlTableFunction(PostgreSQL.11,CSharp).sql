-- PostgreSQL.11 PostgreSQL
DECLARE @param1 Integer -- Int32
SET     @param1 = 5

SELECT
	r.param2
FROM
	"TestTableFunction"(:param1) r

