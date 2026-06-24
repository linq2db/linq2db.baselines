-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"AsyncDataTable" c_1
		WHERE
			c_1."Id" = :p
	)

