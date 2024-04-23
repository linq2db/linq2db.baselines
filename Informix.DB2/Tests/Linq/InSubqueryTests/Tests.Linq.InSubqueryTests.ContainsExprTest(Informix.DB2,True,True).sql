BeforeExecute
-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 1

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
			p.ParentID + @n = c_1.ParentID
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

