BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @someValue Int32
SET     @someValue = 3

SELECT
	CAST(:someValue AS Int),
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" <= :someValue
UNION ALL
SELECT
	CAST(:someValue AS Int),
	c_2."ChildID"
FROM
	"Child" c_2
WHERE
	c_2."ChildID" > :someValue

