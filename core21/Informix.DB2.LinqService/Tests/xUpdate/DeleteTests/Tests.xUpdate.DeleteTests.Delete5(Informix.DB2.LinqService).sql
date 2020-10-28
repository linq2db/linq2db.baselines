BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@p1,
	1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 1002

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@p1,
	1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID IN (1001, 1002)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

