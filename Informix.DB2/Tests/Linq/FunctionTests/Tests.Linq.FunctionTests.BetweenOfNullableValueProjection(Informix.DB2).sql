-- Informix.DB2 Informix
SELECT
	p.ParentID,
	CASE
		WHEN p.Value1 BETWEEN 1 AND 3 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN p.Value1 NOT BETWEEN 1 AND 3 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Parent p

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

