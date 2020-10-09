BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Int16
SET     @p1 = 0
DECLARE @Length_1 Int32
SET     @Length_1 = 3

SELECT 
	p_1.ID, 
	p_1.FirstName_1
FROM
	( 
		SELECT 
			'123' || p.FirstName || '0123451234' as FirstName, 
			p.PersonID as ID, 
			p.FirstName as FirstName_1
		FROM
			Person p
		WHERE
			p.PersonID = 1
	) p_1
WHERE
	CASE
		WHEN :p1 = 1 THEN 5
		WHEN InStr(Substr(p_1.FirstName, 1, 11), '123', 6) = 0
			THEN -1
		ELSE (11 - InStr(Reverse(Substr(p_1.FirstName, 6, 6)), '321')) - :Length_1 + 1
	END = 8

