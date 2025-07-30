BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 1
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 2
DECLARE @p_2 Integer(4) -- Int32
SET     @p_2 = 3
DECLARE @param Integer(4) -- Int32
SET     @param = 4

SELECT FIRST 1
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	o.ParentID IN (@p, @p_1, @p_2) OR o.ParentID = @param

