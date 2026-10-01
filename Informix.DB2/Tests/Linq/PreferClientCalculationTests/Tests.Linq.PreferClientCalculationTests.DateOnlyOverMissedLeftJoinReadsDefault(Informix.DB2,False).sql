-- Informix.DB2 Informix
DECLARE @bound Date(16)
SET     @bound = TO_DATE('2000-01-01', '%Y-%m-%d')

SELECT
	e.Id,
	CASE
		WHEN Nvl(j."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) > @bound::DATETIME YEAR TO DAY
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Nvl(j."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) < @bound::DATETIME YEAR TO DAY
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Nvl(j."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) > e."Day"
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Nvl(j."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) <= e."Day"
			THEN 'y'
		ELSE 'n'
	END
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Day"
FROM
	MissedDayEntity t1

-- Informix.DB2 Informix
SELECT
	Year(Nvl(j."Day", TO_DATE('0001-01-01', '%Y-%m-%d')))
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

