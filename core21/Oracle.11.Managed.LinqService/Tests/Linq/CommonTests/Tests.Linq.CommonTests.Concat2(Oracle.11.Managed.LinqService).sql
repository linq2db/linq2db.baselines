BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName || ' ' || Cast(1 as VarChar(11)) = 'John 1'

