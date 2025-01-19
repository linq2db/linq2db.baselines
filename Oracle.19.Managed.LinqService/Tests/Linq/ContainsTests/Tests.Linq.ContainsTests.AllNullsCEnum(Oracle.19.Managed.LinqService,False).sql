BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @In_1 Varchar2 -- String
SET     @In_1 = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_1)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @NotIn Varchar2 -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn)

