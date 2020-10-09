BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 1
DECLARE @Value_3 Integer -- Int32
SET     @Value_3 = 1
DECLARE @Value_4 Integer -- Int32
SET     @Value_4 = 3

SELECT 
	CASE
		WHEN :Value_2 < 2 THEN :Value_3
		ELSE :Value_4
	END

