BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	:value,
	CASE
		WHEN 1 = 1 THEN :p
		ELSE 5
	END

