BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Child t1
WHERE
	t1.ChildID = 10000

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Parent t1
WHERE
	t1.ParentID = 20000

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO Child
(
	ChildID,
	ParentID
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- Oracle.Managed Oracle12

UPDATE
	Parent
SET
	Parent.Value1 = 5
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			Child child_1
				LEFT JOIN Parent a_Parent ON child_1.ParentID = a_Parent.ParentID
		WHERE
			child_1.ChildID = 10000 AND
			a_Parent.ParentID > 0 AND
			Parent.ParentID = a_Parent.ParentID AND
			(Parent.Value1 = a_Parent.Value1 OR Parent.Value1 IS NULL AND a_Parent.Value1 IS NULL)
	)

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Child t1
WHERE
	t1.ChildID = 10000

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Parent t1
WHERE
	t1.ParentID = 20000

