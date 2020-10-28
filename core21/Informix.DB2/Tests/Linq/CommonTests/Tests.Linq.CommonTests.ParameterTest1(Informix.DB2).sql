BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	p.ParentID
FROM
	Child p
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			Parent t
		WHERE
			t.ParentID = @id AND t.ParentID = p.ParentID
	))
GROUP BY
	p.ParentID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 2

SELECT
	p.ParentID
FROM
	Child p
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			Parent t
		WHERE
			t.ParentID = @id AND t.ParentID = p.ParentID
	))
GROUP BY
	p.ParentID

