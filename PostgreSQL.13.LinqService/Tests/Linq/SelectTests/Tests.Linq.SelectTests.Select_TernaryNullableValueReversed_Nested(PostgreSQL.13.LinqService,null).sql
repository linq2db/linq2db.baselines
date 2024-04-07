BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = NULL
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	:value,
	CASE
		WHEN 1 = 1 THEN :p
		ELSE 4
	END

