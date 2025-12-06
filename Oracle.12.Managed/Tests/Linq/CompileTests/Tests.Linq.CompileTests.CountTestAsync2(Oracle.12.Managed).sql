-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

