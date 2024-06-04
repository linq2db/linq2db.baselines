BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = p.ParentID AND EXISTS(
				SELECT
					*
				FROM
					GrandChild gc
				WHERE
					c_1.ChildID = gc.ChildID
			)
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID,
	t1.GrandChildID
FROM
	GrandChild t1

