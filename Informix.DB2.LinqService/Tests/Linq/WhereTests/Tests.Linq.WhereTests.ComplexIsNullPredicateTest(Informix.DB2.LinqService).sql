BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Value"
FROM
	ComplexPredicate r
WHERE
	CASE
		WHEN r."Value" = '123' AND r."Value" IS NOT NULL THEN 't'::BOOLEAN
		WHEN r."Value" <> '123' OR r."Value" IS NULL THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN r."Value" = '1' AND r."Value" IS NOT NULL OR r."Value" = 'test' AND r."Value" IS NOT NULL AND (r."Value" <> '1' OR r."Value" IS NULL)
			THEN 't'::BOOLEAN
		WHEN NOT (r."Value" = '1' AND r."Value" IS NOT NULL OR r."Value" = 'test' AND r."Value" IS NOT NULL AND (r."Value" <> '1' OR r."Value" IS NULL))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN r."Value" = '123' AND r."Value" IS NOT NULL THEN 't'::BOOLEAN
		WHEN r."Value" <> '123' OR r."Value" IS NULL THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN r."Value" = '1' AND r."Value" IS NOT NULL OR r."Value" = 'test' AND r."Value" IS NOT NULL AND (r."Value" <> '1' OR r."Value" IS NULL)
			THEN 't'::BOOLEAN
		WHEN NOT (r."Value" = '1' AND r."Value" IS NOT NULL OR r."Value" = 'test' AND r."Value" IS NOT NULL AND (r."Value" <> '1' OR r."Value" IS NULL))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL
ORDER BY
	r.Id

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	ComplexPredicate t1

