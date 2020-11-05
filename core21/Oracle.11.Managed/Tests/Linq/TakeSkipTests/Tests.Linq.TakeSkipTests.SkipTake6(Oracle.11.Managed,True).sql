BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1,
	(
		SELECT
			p.ParentID
		FROM
			GrandChild p
		WHERE
			ROWNUM <= :take
	) t1
WHERE
	c_1.ParentID = t1.ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 15
DECLARE @skip_1 Int32
SET     @skip_1 = 12

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1,
	(
		SELECT
			t2.ParentID
		FROM
			(
				SELECT
					t1.ParentID,
					ROWNUM as RN
				FROM
					(
						SELECT
							p.ParentID
						FROM
							GrandChild p
					) t1
				WHERE
					ROWNUM <= :skip
			) t2
		WHERE
			t2.RN > :skip_1
	) t3
WHERE
	c_1.ParentID = t3.ParentID

