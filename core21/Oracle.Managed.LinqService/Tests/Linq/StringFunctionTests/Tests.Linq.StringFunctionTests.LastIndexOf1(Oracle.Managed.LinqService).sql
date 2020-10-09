BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Int16
SET     @p1 = 0
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
		WHEN :p1 = 1 THEN Length(p.LastName) - 1
		WHEN InStr(p.LastName, 'p') = 0
			THEN -1
		ELSE (Length(p.LastName) - InStr(Reverse(p.LastName), 'p')) - :Length_1 + 1
	END = 2 AND
	p.PersonID = 1

