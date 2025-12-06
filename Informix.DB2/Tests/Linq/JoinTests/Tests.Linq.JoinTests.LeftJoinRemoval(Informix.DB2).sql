-- Informix.DB2 Informix

SELECT
	ch1.ParentID,
	ch1.ChildID
FROM
	Parent t1
		INNER JOIN Child ch ON t1.ParentID = ch.ParentID
		INNER JOIN Child ch1 ON ch.ChildID = ch1.ChildID

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

