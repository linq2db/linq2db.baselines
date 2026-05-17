-- PostgreSQL.13 PostgreSQL
DECLARE @month Integer -- Int32
SET     @month = 10

SELECT
	make_timestamp(2010 + t."ID", :month, 1, 0, 0, 0)
FROM
	"LinqDataTypes" t

