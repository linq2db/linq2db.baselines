BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT
	t1.param3,
	t1.param4
FROM
	"TestTableFunction1"(:p, :p_1) t1

