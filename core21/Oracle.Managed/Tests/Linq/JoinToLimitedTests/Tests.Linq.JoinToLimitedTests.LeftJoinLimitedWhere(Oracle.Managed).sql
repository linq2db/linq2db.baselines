BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	o.ParentID,
	o.Value1,
	x.ParentID,
	x.ChildID
FROM
	Parent o
		LEFT JOIN (
			SELECT
				t1.ParentID,
				t1.ChildID
			FROM
				Child t1
			FETCH NEXT :take ROWS ONLY
		) x ON x.ParentID = o.ParentID

