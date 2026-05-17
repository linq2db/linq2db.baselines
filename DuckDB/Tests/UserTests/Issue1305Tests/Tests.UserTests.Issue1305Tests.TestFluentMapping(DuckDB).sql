-- DuckDB

SELECT
	t.table_catalog || '.' || t.table_schema || '.' || t."table_name",
	t.table_catalog,
	t.table_schema,
	t."table_name",
	t.table_schema = 'main',
	t.table_type,
	t.TABLE_COMMENT
FROM
	information_schema."tables" t
WHERE
	t.table_catalog NOT IN ('system', 'temp')
ORDER BY
	t.table_schema,
	t."table_name"

-- DuckDB

SELECT
	kcu.table_catalog || '.' || kcu.table_schema || '.' || kcu."table_name",
	tc_1.ConstraintName,
	kcu."column_name",
	kcu.ordinal_position
FROM
	(
		SELECT DISTINCT
			tc.table_catalog as TableCatalog,
			tc.table_schema as TableSchema,
			tc."table_name" as TableName,
			tc."constraint_name" as ConstraintName
		FROM
			information_schema.constraint_column_usage tc
		WHERE
			tc.table_catalog NOT IN ('system', 'temp') AND tc.constraint_type = 'PRIMARY KEY'
	) tc_1
		INNER JOIN information_schema.key_column_usage kcu ON tc_1.TableCatalog = kcu.table_catalog AND tc_1.TableSchema = kcu.table_schema AND tc_1.TableName = kcu."table_name" AND tc_1.ConstraintName = kcu."constraint_name"

-- DuckDB

SELECT
	c_1.table_catalog || '.' || c_1.table_schema || '.' || c_1."table_name",
	c_1."column_name",
	c_1.is_nullable,
	c_1.ordinal_position,
	c_1.data_type,
	c_1.numeric_precision,
	c_1.numeric_scale,
	c_1.column_default IS NOT NULL AND c_1.column_default LIKE '%nextval%' ESCAPE '~',
	c_1.COLUMN_COMMENT
FROM
	information_schema."columns" c_1
WHERE
	c_1.table_catalog NOT IN ('system', 'temp')
ORDER BY
	c_1.table_schema,
	c_1."table_name",
	c_1.ordinal_position

-- DuckDB

SELECT
	t1.ConstraintName,
	fk.table_catalog || '.' || fk.table_schema || '.' || fk."table_name",
	fk."column_name",
	pk.table_catalog || '.' || pk.table_schema || '.' || pk."table_name",
	pk."column_name",
	fk.ordinal_position
FROM
	(
		SELECT DISTINCT
			rc."constraint_catalog" as ConstraintCatalog,
			rc."constraint_schema" as ConstraintSchema,
			rc."constraint_name" as ConstraintName,
			rc.table_catalog as TableCatalog,
			rc.table_schema as TableSchema,
			rc."table_name" as TableName
		FROM
			information_schema.constraint_column_usage rc
		WHERE
			rc.table_catalog NOT IN ('system', 'temp') AND rc.constraint_type = 'FOREIGN KEY'
	) t1
		INNER JOIN information_schema.referential_constraints map_1 ON t1.ConstraintCatalog = map_1."constraint_catalog" AND t1.ConstraintSchema = map_1."constraint_schema" AND t1.ConstraintName = map_1."constraint_name"
		INNER JOIN information_schema.key_column_usage fk ON t1.TableCatalog = fk.table_catalog AND t1.TableSchema = fk.table_schema AND t1.TableName = fk."table_name" AND t1.ConstraintName = fk."constraint_name"
		INNER JOIN information_schema.key_column_usage pk ON map_1.unique_constraint_catalog = pk."constraint_catalog" AND map_1.unique_constraint_schema = pk."constraint_schema" AND map_1.unique_constraint_name = pk."constraint_name" AND fk.ordinal_position = pk.ordinal_position

-- DuckDB

SELECT current_database()

