BeforeExecute
-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	t1.ParentID
FROM
	(
		SELECT
			ch.ParentID + 1 as ParentID
		FROM
			Child ch
		WHERE
			ch.ParentID + 1 > @n
	) t1
GROUP BY
	t1.ParentID

