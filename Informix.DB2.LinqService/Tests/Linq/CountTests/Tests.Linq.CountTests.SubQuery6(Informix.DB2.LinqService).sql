BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 5

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Child a_Children
		WHERE
			p_1.ParentID = a_Children.ParentID
	)
FROM
	(
		SELECT FIRST @take
			p.ParentID
		FROM
			Parent p
	) p_1
ORDER BY
	p_1.ParentID DESC

