﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @ID Text(5) -- String
SET     @ID = '2010-'

SELECT
	t.c1
FROM
	(
		SELECT
			Cast((:ID || Cast(p."ID" as text) || '-1') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(year from t.c1)) as int) = 2010

