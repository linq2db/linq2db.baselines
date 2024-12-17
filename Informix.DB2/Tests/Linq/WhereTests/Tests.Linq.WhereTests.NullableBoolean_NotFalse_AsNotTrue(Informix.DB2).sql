BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NullableBool

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NullableBool
(
	ID   Int     NOT NULL,
	Bool BOOLEAN     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ID,
	r.Bool
FROM
	NullableBool r
WHERE
	r.Bool = 't'::BOOLEAN OR r.Bool IS NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NullableBool

