-- Informix.DB2 Informix
SELECT
	e.Id,
	e."Item",
	e.Flag
FROM
	NestedInListEntity e
WHERE
	CASE
		WHEN e.Flag THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN e.Id IN (e."Item", 5) THEN 't'::BOOLEAN
		WHEN NOT (e.Id = e."Item" AND e."Item" IS NOT NULL OR e.Id = 5)
			THEN 'f'::BOOLEAN
		ELSE NULL
	END

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Item",
	t1.Flag
FROM
	NestedInListEntity t1

-- Informix.DB2 Informix
SELECT
	e.Id,
	e."Item",
	e.Flag
FROM
	NestedInListEntity e
WHERE
	CASE
		WHEN e.Flag THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN e.Id IN (e."Item", 5) THEN 't'::BOOLEAN
		WHEN NOT (e.Id = e."Item" AND e."Item" IS NOT NULL OR e.Id = 5)
			THEN 'f'::BOOLEAN
		ELSE NULL
	END

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Item",
	t1.Flag
FROM
	NestedInListEntity t1

