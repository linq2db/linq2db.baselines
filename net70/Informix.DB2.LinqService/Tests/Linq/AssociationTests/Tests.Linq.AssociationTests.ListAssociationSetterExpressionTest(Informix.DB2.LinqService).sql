BeforeExecute
-- Informix.DB2 Informix

SELECT
	lw_ListAssociationSetterExpressionTestClass.ParentID,
	detail.ParentID,
	detail.ChildID
FROM
	(
		SELECT DISTINCT
			t2.ParentID
		FROM
			(
				SELECT FIRST 1
					t1.ParentID
				FROM
					Parent t1
			) t2
	) lw_ListAssociationSetterExpressionTestClass
		INNER JOIN Child detail ON lw_ListAssociationSetterExpressionTestClass.ParentID = detail.ParentID

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.ParentID
FROM
	Parent t1

