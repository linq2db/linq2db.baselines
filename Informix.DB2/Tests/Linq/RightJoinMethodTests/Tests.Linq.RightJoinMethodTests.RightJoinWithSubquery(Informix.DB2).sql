-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 10

SELECT
	p_1.ParentID,
	c_1.ChildID
FROM
	(
		SELECT FIRST @take
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
	) p_1
		RIGHT JOIN Child c_1 ON p_1.ParentID = c_1.ParentID

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

