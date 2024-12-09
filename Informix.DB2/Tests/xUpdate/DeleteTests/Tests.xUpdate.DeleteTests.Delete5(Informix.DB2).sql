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

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1002,
	1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
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
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

