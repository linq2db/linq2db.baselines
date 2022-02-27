BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	gjd_ch.ParentID,
	gjd_ch.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID,
			p.Value1
		FROM
			Parent p
		WHERE
			p.ParentID = 1
	) key_data_result
		INNER JOIN Child gjd_ch ON gjd_ch.ParentID = key_data_result.ParentID

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	p.ParentID,
	p.Value1,
	t1.ParentID,
	t1.ChildID
FROM
	Parent p
		OUTER APPLY (
			SELECT
				ch.ParentID,
				ch.ChildID
			FROM
				Child ch
			WHERE
				ch.ParentID = p.ParentID
			ORDER BY
				ch.ChildID DESC
			FETCH NEXT :take ROWS ONLY
		) t1
WHERE
	p.ParentID = 1

