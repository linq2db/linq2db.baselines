BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t2.ChildID
FROM
	( 
		SELECT DISTINCT
			a_Child.ParentID_1 as ParentID, 
			a_Child.ChildID
		FROM
			GrandChild c_1
				LEFT JOIN ( 
					SELECT 
						a_Parent.ParentID, 
						t1.ParentID as ParentID_1, 
						t1.ChildID
					FROM
						Child t1
							LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
				) a_Child ON c_1.ParentID = a_Child.ParentID_1 AND c_1.ChildID = a_Child.ChildID
		WHERE
			a_Child.ParentID > 0
	) t2

