BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	Substring('123', 2, :p)

