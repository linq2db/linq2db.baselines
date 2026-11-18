-- PostgreSQL.13 PostgreSQL12
DECLARE @In Varchar -- String
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In, :In)

-- PostgreSQL.13 PostgreSQL12
DECLARE @NotIn Varchar -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn)

