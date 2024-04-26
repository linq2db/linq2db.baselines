BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as ID
		FROM table(set{1})
	) s

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as ID
		FROM table(set{1})
	) s
WHERE
	1 = 0

