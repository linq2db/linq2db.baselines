BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Length_1 Int32
SET     @Length_1 = 1

SELECT 
	p.FirstName, 
	p.PersonID, 
	p.LastName, 
	p.MiddleName, 
	p.Gender
FROM
	Person p
WHERE
	CASE
		WHEN :Length_1 = 0 AND Length(p.LastName) > 2
			THEN 2
		ELSE InStr(p.LastName, 'e', 3) - 1
	END = 4 AND
	p.PersonID = 2

