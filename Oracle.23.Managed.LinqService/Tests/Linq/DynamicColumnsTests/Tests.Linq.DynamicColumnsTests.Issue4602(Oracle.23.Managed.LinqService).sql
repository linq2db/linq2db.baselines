BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	it.ID
FROM
	"DynamicParent" it
		INNER JOIN "DynamicChild" a_Child ON it.ID = a_Child."ParentID"
WHERE
	a_Child.ID = 123

