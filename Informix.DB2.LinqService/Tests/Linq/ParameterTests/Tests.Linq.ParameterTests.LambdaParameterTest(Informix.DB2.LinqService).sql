BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	r.ParentID,
	r.Value1
FROM
	Parent r
WHERE
	r.ParentID = @p

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

