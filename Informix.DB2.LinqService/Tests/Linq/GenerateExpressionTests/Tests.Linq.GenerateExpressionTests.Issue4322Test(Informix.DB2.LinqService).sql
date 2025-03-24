BeforeExecute
--  Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	x."position"
FROM
	entities x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT -10::Real AS X, 10::Real AS Y FROM table(set{1})) t
		WHERE
			x."position".x > t.X
	)

