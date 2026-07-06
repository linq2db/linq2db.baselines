-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	c_1.value
FROM
	(
		select :p c_1
	)

