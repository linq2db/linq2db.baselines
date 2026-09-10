-- YDB Ydb
DECLARE $take Int32
SET     $take = 10
DECLARE $take_1 Int32
SET     $take_1 = 10

SELECT
	p_1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
		LIMIT $take
	) p_1
		CROSS JOIN (
			SELECT
				c_1.ChildID as ChildID
			FROM
				Child c_1
			LIMIT $take_1
		) t1

