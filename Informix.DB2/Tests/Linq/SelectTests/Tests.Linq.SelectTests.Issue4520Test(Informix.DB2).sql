BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN NOT CASE
			WHEN i.BoolValue IS NOT NULL THEN CASE
				WHEN i.BoolValue = 't'::BOOLEAN THEN 't'::BOOLEAN
				WHEN i.BoolValue = 'f'::BOOLEAN OR i.BoolValue IS NULL THEN 'f'::BOOLEAN
				ELSE NULL
			END
			ELSE 'f'::BOOLEAN
		END AND (i.IntValue = t1.cond OR i.IntValue IS NULL AND t1.cond IS NULL)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	LinqDataTypes i
		LEFT JOIN (
			SELECT FIRST 1
				p.IntValue as cond
			FROM
				LinqDataTypes p
			WHERE
				p.ID = 2
		) t1 ON 1=1
WHERE
	i.ID = 1

