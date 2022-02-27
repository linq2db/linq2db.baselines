BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	LISTAGG(c_1.ChildID) WITHIN GROUP (ORDER BY c_1.ParentID DESC, a_ParentTest.Value1, p.Value1),
	LISTAGG(c_1.ChildID) WITHIN GROUP (ORDER BY c_1.ParentID DESC NULLS FIRST, p.Value1 NULLS LAST),
	LISTAGG(c_1.ChildID) WITHIN GROUP (ORDER BY c_1.ParentID NULLS FIRST, c_1.ParentID, p.Value1 NULLS FIRST),
	LISTAGG(c_1.ChildID) WITHIN GROUP (ORDER BY c_1.ParentID DESC, a_ParentTest.Value1, p.Value1 DESC),
	LISTAGG(c_1.ChildID, '..') WITHIN GROUP (ORDER BY c_1.ParentID DESC, a_ParentTest.Value1, p.Value1 DESC)
FROM
	Parent p
		LEFT JOIN Parent a_ParentTest ON p.ParentID = a_ParentTest.ParentID AND (p.Value1 IS NULL AND a_ParentTest.Value1 IS NULL OR p.Value1 = a_ParentTest.Value1)
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

