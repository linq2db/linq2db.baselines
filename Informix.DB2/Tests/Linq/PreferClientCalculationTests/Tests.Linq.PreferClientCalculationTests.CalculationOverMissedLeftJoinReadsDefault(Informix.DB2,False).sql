-- Informix.DB2 Informix
DECLARE @bound Timestamp(16) -- DateTime
SET     @bound = TO_DATE('2000-01-01', '%Y-%m-%d')

SELECT
	e.Id,
	Nvl(j.Value1, 0) + 1,
	CASE
		WHEN Nvl(j.Value1, 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Nvl(j.Value1, 0) - 1),
	CASE
		WHEN j."Date" IS NULL THEN 1
		ELSE Year(j."Date")
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'n'
		WHEN j."Date" > @bound::datetime year to fraction THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'y'
		WHEN j."Date" < @bound::datetime year to fraction THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'n'
		WHEN j."Date" > e."Date" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'y'
		WHEN j."Date" <= e."Date" THEN 'y'
		ELSE 'n'
	END
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Value1,
	t1."Date"
FROM
	MissedJoinEntity t1

