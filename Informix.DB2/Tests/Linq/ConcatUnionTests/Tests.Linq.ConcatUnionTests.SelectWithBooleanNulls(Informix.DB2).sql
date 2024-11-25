BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child t1
		) THEN 't'
		ELSE 'f'
	END::BOOLEAN,
	CASE
		WHEN x.ParentID <> 0 THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Parent x
UNION ALL
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child t2
		) THEN 't'
		ELSE 'f'
	END::BOOLEAN,
	NULL::BOOLEAN
FROM
	Parent x_1

