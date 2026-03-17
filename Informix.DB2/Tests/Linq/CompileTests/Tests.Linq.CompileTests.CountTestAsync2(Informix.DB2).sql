-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = @p

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = @p

