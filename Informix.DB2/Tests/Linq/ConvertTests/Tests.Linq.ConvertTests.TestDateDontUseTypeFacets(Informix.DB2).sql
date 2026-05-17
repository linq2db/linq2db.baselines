-- Informix.DB2 Informix

SELECT
	g_2.Date_1,
	COUNT(*)
FROM
	(
		SELECT
			Extend(g_1.CreatedOnUtc, Year to Day) as Date_1
		FROM
			Issue5390Table g_1
	) g_2
GROUP BY
	g_2.Date_1

-- Informix.DB2 Informix

SELECT
	t1.CreatedOnUtc
FROM
	Issue5390Table t1

