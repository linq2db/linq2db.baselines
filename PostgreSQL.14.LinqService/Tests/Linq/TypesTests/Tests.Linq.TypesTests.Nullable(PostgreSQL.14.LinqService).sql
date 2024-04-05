BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CASE
		WHEN p."Value1" IS NULL THEN :p
		ELSE p."Value1"
	END
FROM
	"Parent" p

