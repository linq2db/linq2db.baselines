BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.FirstName, 
	Count(*)
FROM
	Person t1
GROUP BY
	t1.FirstName

