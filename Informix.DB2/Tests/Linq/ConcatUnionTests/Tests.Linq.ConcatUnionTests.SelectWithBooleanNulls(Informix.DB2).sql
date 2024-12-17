BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Child t1
		) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN x.ParentID <> 0 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Parent x
UNION ALL
SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Child t2
		) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	NULL::BOOLEAN
FROM
	Parent x_1

