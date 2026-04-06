-- DuckDB

SELECT
	t.table_catalog || '.' || t.table_schema || '.' || t."table_name",
	t.table_catalog,
	t.table_schema,
	t."table_name",
	t.table_schema = 'main',
	t.table_type = 'VIEW'
FROM
	information_schema."tables" t
WHERE
	t.table_schema <> 'information_schema' AND t.table_schema <> 'pg_catalog'
ORDER BY
	t.table_schema,
	t."table_name"

-- DuckDB

SELECT
	database_name,
	schema_name,
	table_name,
	constraint_text,
	unnest(constraint_column_names) AS column_name,
	generate_subscripts(constraint_column_names, 1) AS ordinal
FROM duckdb_constraints()
WHERE constraint_type = 'PRIMARY KEY'

-- DuckDB

SELECT
	c_1.table_catalog || '.' || c_1.table_schema || '.' || c_1."table_name",
	c_1."column_name",
	c_1.is_nullable = 'YES',
	c_1.ordinal_position,
	c_1.data_type,
	c_1.character_maximum_length,
	c_1.numeric_precision,
	c_1.numeric_scale,
	c_1.column_default IS NOT NULL AND c_1.column_default LIKE '%nextval%' ESCAPE '~'
FROM
	information_schema."columns" c_1
WHERE
	c_1.table_schema <> 'information_schema' AND c_1.table_schema <> 'pg_catalog'
ORDER BY
	c_1.table_schema,
	c_1."table_name",
	c_1.ordinal_position

-- DuckDB

SELECT current_database()

-- DuckDB

SELECT
	t.table_catalog || '.' || t.table_schema || '.' || t."table_name",
	t.table_catalog,
	t.table_schema,
	t."table_name",
	t.table_schema = 'main',
	t.table_type = 'VIEW'
FROM
	information_schema."tables" t
WHERE
	t.table_schema <> 'information_schema' AND t.table_schema <> 'pg_catalog'
ORDER BY
	t.table_schema,
	t."table_name"

-- DuckDB

SELECT
	database_name,
	schema_name,
	table_name,
	constraint_text,
	unnest(constraint_column_names) AS column_name,
	generate_subscripts(constraint_column_names, 1) AS ordinal
FROM duckdb_constraints()
WHERE constraint_type = 'PRIMARY KEY'

-- DuckDB

SELECT
	c_1.table_catalog || '.' || c_1.table_schema || '.' || c_1."table_name",
	c_1."column_name",
	c_1.is_nullable = 'YES',
	c_1.ordinal_position,
	c_1.data_type,
	c_1.character_maximum_length,
	c_1.numeric_precision,
	c_1.numeric_scale,
	c_1.column_default IS NOT NULL AND c_1.column_default LIKE '%nextval%' ESCAPE '~'
FROM
	information_schema."columns" c_1
WHERE
	c_1.table_schema <> 'information_schema' AND c_1.table_schema <> 'pg_catalog'
ORDER BY
	c_1.table_schema,
	c_1."table_name",
	c_1.ordinal_position

-- DuckDB

SELECT current_database()

-- DuckDB

SELECT
	t.table_catalog || '.' || t.table_schema || '.' || t."table_name",
	t.table_catalog,
	t.table_schema,
	t."table_name",
	t.table_schema = 'main',
	t.table_type = 'VIEW'
FROM
	information_schema."tables" t
WHERE
	t.table_schema <> 'information_schema' AND t.table_schema <> 'pg_catalog'
ORDER BY
	t.table_schema,
	t."table_name"

-- DuckDB

SELECT
	database_name,
	schema_name,
	table_name,
	constraint_text,
	unnest(constraint_column_names) AS column_name,
	generate_subscripts(constraint_column_names, 1) AS ordinal
FROM duckdb_constraints()
WHERE constraint_type = 'PRIMARY KEY'

-- DuckDB

SELECT
	c_1.table_catalog || '.' || c_1.table_schema || '.' || c_1."table_name",
	c_1."column_name",
	c_1.is_nullable = 'YES',
	c_1.ordinal_position,
	c_1.data_type,
	c_1.character_maximum_length,
	c_1.numeric_precision,
	c_1.numeric_scale,
	c_1.column_default IS NOT NULL AND c_1.column_default LIKE '%nextval%' ESCAPE '~'
FROM
	information_schema."columns" c_1
WHERE
	c_1.table_schema <> 'information_schema' AND c_1.table_schema <> 'pg_catalog'
ORDER BY
	c_1.table_schema,
	c_1."table_name",
	c_1.ordinal_position

-- DuckDB

SELECT current_database()

