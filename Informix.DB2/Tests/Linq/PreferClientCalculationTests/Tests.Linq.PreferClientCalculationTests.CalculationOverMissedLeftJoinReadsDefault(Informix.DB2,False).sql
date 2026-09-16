-- Informix.DB2 Informix
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
		WHEN j."Date" > Mdy(1, 1, 2000) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'y'
		WHEN j."Date" < Mdy(1, 1, 2000) THEN 'y'
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

