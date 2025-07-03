BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		LEFT JOIN (
			SELECT
				1 + ch.ParentID as ParentID,
				1 as not_null
			FROM
				GrandChild ch
			WHERE
				ch.ParentID > 0
		) ch_1 ON p.ParentID = ch_1.ParentID
WHERE
	ch_1.not_null IS NULL

