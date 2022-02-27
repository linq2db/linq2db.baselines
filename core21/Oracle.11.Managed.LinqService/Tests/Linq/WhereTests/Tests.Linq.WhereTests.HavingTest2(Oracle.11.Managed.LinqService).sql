BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	Child c_1
GROUP BY
	c_1.ParentID
HAVING
	Count(*) > 1 AND Count(*) > 1

