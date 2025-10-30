BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @In VarChar -- String
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IN (@In, @In)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @NotIn VarChar -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum NOT IN (@NotIn, @NotIn)

