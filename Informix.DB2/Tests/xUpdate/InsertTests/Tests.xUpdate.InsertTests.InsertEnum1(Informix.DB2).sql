-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

-- Informix.DB2 Informix
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	@Value1
)

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID = @id AND t1.Value1 = @Value1

-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

