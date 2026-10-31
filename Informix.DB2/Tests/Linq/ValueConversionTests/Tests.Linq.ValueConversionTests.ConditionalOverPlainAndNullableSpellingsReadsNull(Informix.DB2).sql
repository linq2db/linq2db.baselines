-- Informix.DB2 Informix
SELECT
	CASE
		WHEN r.Id = 1 THEN r.Plain
		ELSE r."Date"
	END
FROM
	Issue5975Row r
ORDER BY
	r.Id

