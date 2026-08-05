-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	MAX(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -1

SELECT
	MAX(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

