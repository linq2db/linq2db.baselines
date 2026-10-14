-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = :p
	) p

