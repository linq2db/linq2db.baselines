-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	1
)

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1002

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	1
)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID IN (1001, 1002)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

