BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @In_1 Varchar2 -- String
SET     @In_1 = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_1)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @NotIn Varchar2 -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn)

