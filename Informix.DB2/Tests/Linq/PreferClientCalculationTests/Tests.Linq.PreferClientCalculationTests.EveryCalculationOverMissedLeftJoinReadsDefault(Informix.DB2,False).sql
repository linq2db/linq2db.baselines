-- Informix.DB2 Informix
SELECT
	e.Id,
	Nvl(j.Value1, 0) + 1,
	BitOr(Nvl(j.Value1, 0), 1),
	CASE
		WHEN Nvl(j.Value1, 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	CASE
		WHEN Nvl(j.Value1, 0) IN (0) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (Nvl(j.Value1, 0), 5) THEN 'y'
		ELSE 'n'
	END,
	-Nvl(j.Value1, 0) + 1,
	CASE
		WHEN NOT Nvl(j.Flag, 'f'::BOOLEAN) THEN 't'
		ELSE 'f'
	END,
	CASE
		WHEN NOT (Nvl(j.Flag, 'f'::BOOLEAN) OR e.Id < 0) THEN 't'
		ELSE 'f'
	END,
	Abs(Nvl(j.Value1, 0)) + 1,
	'x' || To_Char(Nvl(j.Value1, 0)),
	ABS(Nvl(j.Value1, 0)) + 1,
	Nvl(j.Value1, 0)::Float + 1,
	CASE
		WHEN e.Id > 0 THEN Nvl(j.Value1, 0)
		ELSE 5
	END + 1,
	Nvl(j.Value1, 0) + 1,
	Nvl(j.Value1, 0) + 1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Value1,
	t1."Date",
	t1.Flag,
	t1.Name
FROM
	MissedJoinEntity t1

-- Informix.DB2 Informix
SELECT
	j.Value1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

