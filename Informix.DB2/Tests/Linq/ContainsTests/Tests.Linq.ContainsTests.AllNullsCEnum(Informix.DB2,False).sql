-- Informix.DB2 Informix
DECLARE @In VarChar -- String
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IN (@In, @In)

-- Informix.DB2 Informix
DECLARE @NotIn VarChar -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum NOT IN (@NotIn, @NotIn)

