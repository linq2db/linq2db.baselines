BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child t1
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN),
	Cast(CASE
		WHEN x.ParentID <> 0 THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	Parent x
UNION ALL
SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child t2
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN),
	Cast(NULL as BOOLEAN)
FROM
	Parent x_1

