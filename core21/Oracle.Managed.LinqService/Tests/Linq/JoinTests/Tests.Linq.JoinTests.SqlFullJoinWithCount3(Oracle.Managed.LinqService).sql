BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	COUNT(left_1.ParentID),
	COUNT(t1.ParentID),
	COUNT(*)
FROM
	Parent left_1
		FULL JOIN (
			SELECT
				p.ParentID
			FROM
				Parent p
			WHERE
				p.ParentID <> :id
		) t1 ON t1.ParentID = left_1.ParentID
FETCH NEXT :take ROWS ONLY

