-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = :p
	) p

