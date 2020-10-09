BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.Value1 = 11

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT 
	c_1.ParentID + 1000, 
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID = 11

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Count(*)
FROM
	Parent p
WHERE
	p.Value1 = 11

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.Value1 = 11

