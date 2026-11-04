-- Informix.DB2 Informix
UPDATE
	TestBool t1
SET
	"Value" = CASE
		WHEN t1."Value" = 'f'::BOOLEAN OR t1."Value" IS NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

-- Informix.DB2 Informix
SELECT
	r."Value"
FROM
	TestBool r
ORDER BY
	r.Id

