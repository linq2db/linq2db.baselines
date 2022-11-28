BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_Parent_1.ParentID_1,
	lw_Parent_1.ParentID_2,
	lw_Parent_1.ChildID,
	detail_1.ParentID,
	detail_1.ChildID
FROM
	(
		SELECT DISTINCT
			a_Parent.ParentID as ParentID,
			lw_Parent.ParentID as ParentID_1,
			detail.ParentID as ParentID_2,
			detail.ChildID as ChildID
		FROM
			(
				SELECT DISTINCT
					t1.ParentID as ParentID
				FROM
					(
						SELECT
							p.ParentID as ParentID
						FROM
							Parent p
						WHERE
							p.ParentID = toInt32(3)
						LIMIT toInt32(1)
					) t1
			) lw_Parent
				INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID
				LEFT JOIN Parent a_Parent ON detail.ParentID = a_Parent.ParentID
	) lw_Parent_1
		INNER JOIN Child detail_1 ON lw_Parent_1.ParentID = detail_1.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			(
				SELECT
					p.ParentID as ParentID
				FROM
					Parent p
				WHERE
					p.ParentID = toInt32(3)
				LIMIT toInt32(1)
			) t1
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID
		LEFT JOIN Parent a_Parent ON detail.ParentID = a_Parent.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(3)
LIMIT toInt32(1)

