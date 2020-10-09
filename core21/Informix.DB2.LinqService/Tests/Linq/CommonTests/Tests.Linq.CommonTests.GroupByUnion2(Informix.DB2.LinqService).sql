BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.ParentID
FROM
	Parent p
		LEFT JOIN ( 
			SELECT 
				tt.ParentID as tt
			FROM
				( 
					SELECT 
						Sum(t2.ID) as Sum_1, 
						t2.ParentID
					FROM
						( 
							SELECT 
								c_1.ParentID, 
								c_1.ChildID as ID
							FROM
								Child c_1
							WHERE
								c_1.ParentID < 4
							UNION ALL
							SELECT 
								t1.ParentID, 
								t1.ID
							FROM
								( 
									SELECT 
										Nvl(g_1.ParentID, 0) as ParentID, 
										Nvl(g_1.GrandChildID, 0) as ID
									FROM
										GrandChild g_1
									WHERE
										g_1.ParentID >= 4
								) t1
						) t2
					GROUP BY
						t2.ParentID
				) tt
			WHERE
				(tt.Sum_1 IS NULL OR tt.Sum_1 <> 0)
		) t3 ON p.ParentID = t3.tt

