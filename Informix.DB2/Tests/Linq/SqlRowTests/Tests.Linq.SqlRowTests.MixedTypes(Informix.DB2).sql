-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Mixed t
WHERE
	t."Int" > 0 AND ROW (t.Str, t."Double", t.Bool) = ROW ('One', 1, 't'::BOOLEAN) AND
	EXISTS(
		SELECT
			*
		FROM
			Mixed u
		WHERE
			2 > u."Int" OR 2 = u."Int" AND u."Date" > t."Date"
	)

