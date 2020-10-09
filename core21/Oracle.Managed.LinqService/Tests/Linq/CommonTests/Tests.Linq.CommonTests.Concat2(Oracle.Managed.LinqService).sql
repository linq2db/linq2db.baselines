BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName || ' ' || Cast(1 as VarChar(11)) = 'John 1'

