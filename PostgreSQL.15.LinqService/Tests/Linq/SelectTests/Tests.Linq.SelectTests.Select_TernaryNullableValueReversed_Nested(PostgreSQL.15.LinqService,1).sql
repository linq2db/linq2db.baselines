BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5

SELECT
	:value,
	CASE
		WHEN 1 = 1 THEN :p
		ELSE :p_1
	END

