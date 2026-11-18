-- Informix.DB2 Informix
UPDATE
	Issue5975Row t1
SET
	"Date" = CASE
		WHEN t1."Date" IS NOT NULL THEN TO_DATE('2026-06-06 02:01:01', '%Y-%m-%d %H:%M:%S')
		ELSE t1.Plain + Interval (1) Day to Day
	END

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Plain,
	t1."Date"
FROM
	Issue5975Row t1
ORDER BY
	t1.Id

