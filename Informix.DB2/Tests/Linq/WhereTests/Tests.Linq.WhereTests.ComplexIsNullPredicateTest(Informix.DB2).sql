-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Value"
FROM
	ComplexPredicate r
WHERE
	CASE
		WHEN r."Value" = '123' THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN r."Value" = '1' OR r."Value" = 'test' THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END
ORDER BY
	r.Id

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	ComplexPredicate t1

