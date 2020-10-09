BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Count(*)
FROM
	Person p
WHERE
	p.FirstName IN ('oh', 'oh''', 'oh\')

