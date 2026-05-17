-- Informix.DB2 Informix

SELECT
	r.ID,
	r.Bool
FROM
	NullableBool r
WHERE
	r.Bool = 't'::BOOLEAN OR r.Bool IS NULL

