BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Length_2 Int32
SET     @Length_2 = 9

SELECT
	p_1.ID,
	p_1."FirstName_1"
FROM
	(
		SELECT
			'123' || p."FirstName" || '0123451234' as "FirstName",
			p."PersonID" as ID,
			p."FirstName" as "FirstName_1"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	) p_1
WHERE
	CASE
		WHEN InStr(Substr(p_1."FirstName", 1, 11), '123', 6) = 0
			THEN -1
		ELSE :Length_2 - InStr(Reverse(Substr(p_1."FirstName", 6, 6)), '321')
	END = 8

