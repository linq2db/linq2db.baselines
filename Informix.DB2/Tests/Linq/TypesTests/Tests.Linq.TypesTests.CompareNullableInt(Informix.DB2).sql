-- Informix.DB2 Informix

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t

-- Informix.DB2 Informix
DECLARE @param Integer(4) -- Int32
SET     @param = 1

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t
WHERE
	t.Value1 = @param

