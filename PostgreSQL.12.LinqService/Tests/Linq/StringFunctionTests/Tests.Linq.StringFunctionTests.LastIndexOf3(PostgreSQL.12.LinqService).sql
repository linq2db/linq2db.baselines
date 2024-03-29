﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Length Integer -- Int32
SET     @Length = 9

SELECT
	p_1."ID",
	p_1."FirstName_1"
FROM
	(
		SELECT
			'123' || p."FirstName" || '0123451234' as "FirstName",
			p."PersonID" as "ID",
			p."FirstName" as "FirstName_1"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	) p_1
WHERE
	CASE
		WHEN Position('123' in Substring(Substring(p_1."FirstName", 1, 11), 6, Length(Substring(p_1."FirstName", 1, 11)) - 6)) + 5 = 0
			THEN -1
		ELSE :Length - Position('321' in Reverse(Substring(p_1."FirstName", 6, 6)))
	END = 8

