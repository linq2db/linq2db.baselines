BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	p.Date1,
	p.Date2,
	p.Date3,
	p.Date4
FROM
	WithMultipleDates p
WHERE
	(
		SELECT
			MAX(t1."item")
		FROM
			(
				SELECT p.Date1::datetime year to fraction AS "item" FROM table(set{1})
				UNION ALL
				SELECT p.Date2::datetime year to fraction FROM table(set{1})
				UNION ALL
				SELECT p.Date3::datetime year to fraction FROM table(set{1})
				UNION ALL
				SELECT p.Date4::datetime year to fraction FROM table(set{1})) t1
	) > TO_DATE('2023-01-01', '%Y-%m-%d')

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	p.Date1,
	p.Date2,
	p.Date3,
	p.Date4
FROM
	WithMultipleDates p
WHERE
	CASE
		WHEN (
			SELECT
				MAX(t1."item")
			FROM
				(
					SELECT p.Date1::datetime year to fraction AS "item" FROM table(set{1})
					UNION ALL
					SELECT p.Date2::datetime year to fraction FROM table(set{1})
					UNION ALL
					SELECT p.Date3::datetime year to fraction FROM table(set{1})
					UNION ALL
					SELECT p.Date4::datetime year to fraction FROM table(set{1})) t1
		) > p.Date1
			THEN 'f'::BOOLEAN
		ELSE 't'::BOOLEAN
	END

