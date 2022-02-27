BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
			Cast(Floor(Floor(Cast(c_1.ChildID as Float) / 10D)) as Int) as Value1
		FROM
			Child c_1
		UNION
		SELECT
			Nvl(c_2.ParentID, 0) as ParentID,
			Floor(Cast(Nvl(c_2.GrandChildID, 0) as Float) / 100D) as Value1
		FROM
			GrandChild c_2
	) t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	Parent c_1
WHERE
	c_1.ParentID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

