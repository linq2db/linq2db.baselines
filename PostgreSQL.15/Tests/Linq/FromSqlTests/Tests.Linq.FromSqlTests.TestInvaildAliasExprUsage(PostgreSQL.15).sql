-- PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	c_1.value
FROM
	(
		select :p c_1
	)

