BeforeExecute
-- Informix.DB2 Informix
DECLARE @someValue_1 Integer(4) -- Int32
SET     @someValue_1 = 3
DECLARE @someValue_3 Integer(4) -- Int32
SET     @someValue_3 = 3

SELECT
	t1.Value_1,
	t1.ChildID
FROM
	(
		SELECT
			3 as Value_1,
			c_1.ChildID
		FROM
			Child c_1
		WHERE
			c_1.ChildID <= @someValue_1
	) t1
UNION ALL
SELECT
	t2.Value_1,
	t2.ChildID
FROM
	(
		SELECT
			3 as Value_1,
			c_2.ChildID
		FROM
			Child c_2
		WHERE
			c_2.ChildID > @someValue_3
	) t2

