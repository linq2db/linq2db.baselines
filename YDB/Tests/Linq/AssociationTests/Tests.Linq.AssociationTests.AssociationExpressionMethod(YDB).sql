-- YDB Ydb

SELECT
	a_ChildPredicate_1.ParentID as ParentID,
	a_ChildPredicate_1.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				a_ChildPredicate.ParentID as ParentID,
				a_ChildPredicate.ChildID as ChildID
			FROM
				Child a_ChildPredicate
			WHERE
				a_ChildPredicate.ChildID > 1
		) a_ChildPredicate_1 ON p.ParentID = a_ChildPredicate_1.ParentID

