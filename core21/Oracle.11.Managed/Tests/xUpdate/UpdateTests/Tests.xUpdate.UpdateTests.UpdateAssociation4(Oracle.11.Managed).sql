﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Child t1
WHERE
	t1.ChildID = 10000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.ParentID = 20000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value1 Int32
SET     @Value1 = 5

UPDATE
	Parent
SET
	Parent.Value1 = :Value1
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			Child child_1
				LEFT JOIN Parent a_Parent ON child_1.ParentID = a_Parent.ParentID
		WHERE
			child_1.ChildID = 10000 AND Parent.ParentID = a_Parent.ParentID AND
			(Parent.Value1 = a_Parent.Value1 OR Parent.Value1 IS NULL AND a_Parent.Value1 IS NULL)
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Child t1
WHERE
	t1.ChildID = 10000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.ParentID = 20000

