-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person t1

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1

SELECT SKIP @skip
	1
FROM
	Person t1

