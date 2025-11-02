-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 4

SELECT
	t1.param2
FROM
	"TestTableFunction"(:p) t1

