-- Oracle.11.Managed Oracle11
DECLARE @In_1 Varchar2 -- String
SET     @In_1 = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_1)

-- Oracle.11.Managed Oracle11
DECLARE @NotIn Varchar2 -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn)

