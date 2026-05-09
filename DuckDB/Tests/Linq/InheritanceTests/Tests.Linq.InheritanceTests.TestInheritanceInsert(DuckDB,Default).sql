-- DuckDB
DECLARE $tableName NVarChar(17) -- String
SET     $tableName = 'InheritanceFilter'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK InheritanceFilter(Id, Code, Child1Field, Child2Field, Grandchild11Field, Grandchild12Field, Grandchild21Field, Grandchild22Field)

-- DuckDB

SELECT
	t1.Code,
	t1.Id,
	t1.Child1Field,
	t1.Child2Field,
	t1.Grandchild11Field,
	t1.Grandchild12Field,
	t1.Grandchild21Field,
	t1.Grandchild22Field
FROM
	InheritanceFilter t1

