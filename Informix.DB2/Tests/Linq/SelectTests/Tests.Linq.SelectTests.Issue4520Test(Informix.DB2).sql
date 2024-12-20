﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN (i.BoolValue = 'f'::BOOLEAN AND i.BoolValue IS NOT NULL OR i.BoolValue IS NULL OR CASE
			WHEN i.BoolValue IS NOT NULL THEN i.BoolValue
			ELSE 'f'::BOOLEAN
		END IS NULL) AND (i.IntValue = t1.cond OR i.IntValue IS NULL AND t1.cond IS NULL)
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

