BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	gr_1.ID,
	gr_1.ID + 1
FROM
	(
		SELECT
			Nvl(gr.Value1, c_1.ChildID) as ID
		FROM
			Parent gr
				INNER JOIN Child c_1 ON gr.ParentID = c_1.ParentID
	) gr_1
GROUP BY
	gr_1.ID

