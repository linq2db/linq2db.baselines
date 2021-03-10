BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Text(5) -- String
SET     @ID = '2010-'

SELECT
	Cast((:ID || Cast(p."ID" as VarChar(11)) || '-1') as Date)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Extract(year from Cast((:ID || Cast(p."ID" as VarChar(11)) || '-1') as Date))) as int) = 2010

