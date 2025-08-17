BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 10000

SELECT FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @id1 OR p.ParentID >= @id1 OR p.ParentID >= @id2
ORDER BY
	p.ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 2
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 10000

SELECT FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @id1 OR p.ParentID >= @id1 OR p.ParentID >= @id2
ORDER BY
	p.ParentID

