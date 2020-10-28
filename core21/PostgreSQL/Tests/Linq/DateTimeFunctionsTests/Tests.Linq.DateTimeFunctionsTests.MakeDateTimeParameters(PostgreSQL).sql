BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Text(5) -- String
SET     @p1 = '2010-'

SELECT
	Cast((:p1 || Cast(p."ID" as VarChar(11)) || '-1') as Date)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Extract(year from Cast((:p1 || Cast(p."ID" as VarChar(11)) || '-1') as Date))) as int) = 2010

