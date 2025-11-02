-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

