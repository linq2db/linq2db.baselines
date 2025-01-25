BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	(x.ParentID = @ParentID OR x.ParentID = @ParentID)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 3
DECLARE @ParentID_1 Integer(4) -- Int32
SET     @ParentID_1 = 2

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	(x.ParentID = @ParentID OR x.ParentID = @ParentID_1)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

