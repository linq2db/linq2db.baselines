BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @In Varchar -- String
SET     @In = NULL
DECLARE @In_1 Varchar -- String
SET     @In_1 = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In, :In_1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @NotIn Varchar -- String
SET     @NotIn = NULL
DECLARE @NotIn_1 Varchar -- String
SET     @NotIn_1 = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn_1)

