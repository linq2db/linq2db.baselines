-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = :p
	) p

-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 1
DECLARE @byName Int32
SET     @byName = 2

SELECT
	p."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = :p OR "PersonID" = :byName
	) p
ORDER BY
	p."PersonID"

