-- Informix.DB2 Informix
DECLARE @value Integer(4) -- Int32
SET     @value = 3
DECLARE @low Integer(4) -- Int32
SET     @low = 0

SELECT
	p.ParentID
FROM
	Parent p
WHERE
	@value BETWEEN @low AND p.ParentID

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- Informix.DB2 Informix
DECLARE @value Integer(4) -- Int32
SET     @value = 3
DECLARE @low Integer(4) -- Int32
SET     @low = 0

SELECT
	p.ParentID
FROM
	Parent p
WHERE
	@value NOT BETWEEN @low AND p.ParentID

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

