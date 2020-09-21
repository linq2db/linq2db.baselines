BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Boolean
SET     @p1 = False
DECLARE @Length_1 Integer -- Int32
SET     @Length_1 = 3

SELECT
	p_1."ID",
	p_1."FirstName_1"
FROM
	(
		SELECT
			'123' || p."FirstName" || '012345' as "FirstName",
			p."PersonID" as "ID",
			p."FirstName" as "FirstName_1"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	) p_1
WHERE
	CASE
		WHEN :p1 = True THEN 5
		WHEN Position('123' in Substring(p_1."FirstName", 6, Length(p_1."FirstName") - 6)) + 5 = 0
			THEN -1
		ELSE (Length(p_1."FirstName") - Position('321' in Reverse(Substring(p_1."FirstName", 6, Length(p_1."FirstName") - 5)))) - :Length_1 + 1
	END = 8

