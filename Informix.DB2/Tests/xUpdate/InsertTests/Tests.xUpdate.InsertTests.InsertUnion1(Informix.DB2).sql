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
SELECT
	t1.ParentID + 1000,
	t1.Value1
FROM
	(
		SELECT
			c_1.ParentID,
			Floor(c_1.ChildID::Float / 10)::Int as Value1
		FROM
			Child c_1
		UNION
		SELECT
			Nvl(c_2.ParentID, 0) as ParentID,
			Floor(Nvl(c_2.GrandChildID, 0)::Float / 100) as Value1
		FROM
			GrandChild c_2
	) t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Parent c_1
WHERE
	c_1.ParentID > 1000

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

