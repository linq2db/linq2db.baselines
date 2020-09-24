BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 1

SELECT
	c_1
FROM
	(
		select :p1 c_1
	)

