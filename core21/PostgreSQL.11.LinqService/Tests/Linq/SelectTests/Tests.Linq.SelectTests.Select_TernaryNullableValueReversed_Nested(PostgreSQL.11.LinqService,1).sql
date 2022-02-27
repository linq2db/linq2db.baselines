BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 1
DECLARE @Value_3 Integer -- Int32
SET     @Value_3 = 1
DECLARE @Value_4 Integer -- Int32
SET     @Value_4 = 5

SELECT
	CASE
		WHEN :Value_2 < 2 THEN :Value_3
		ELSE :Value_4
	END

