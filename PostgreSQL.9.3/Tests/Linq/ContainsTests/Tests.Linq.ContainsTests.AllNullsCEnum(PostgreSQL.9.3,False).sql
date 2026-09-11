-- PostgreSQL.9.3 PostgreSQL
DECLARE @In Varchar -- String
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In, :In)

-- PostgreSQL.9.3 PostgreSQL
DECLARE @NotIn Varchar -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn)

