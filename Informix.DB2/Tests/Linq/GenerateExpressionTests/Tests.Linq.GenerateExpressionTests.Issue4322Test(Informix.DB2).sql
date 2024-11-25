BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 3
	x."position"
FROM
	entities x
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT -10::Real AS X FROM table(set{1})) t
		WHERE
			x."position".x > t.X
	)

