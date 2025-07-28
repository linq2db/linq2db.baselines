BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @month Integer -- Int32
SET     @month = 1

SELECT
	make_timestamp(2010 + t."ID", :month, 1, 0, 0, 0::float8)
FROM
	"LinqDataTypes" t

