-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"AllTypes" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SHOW server_version_num

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL


SELECT	r.ROUTINE_CATALOG,
		r.ROUTINE_SCHEMA,
		r.ROUTINE_NAME,
		r.ROUTINE_DEFINITION,
		r.SPECIFIC_NAME,
		p.prokind,
		p.proretset,
		r.DATA_TYPE,
		outp.cnt
	FROM INFORMATION_SCHEMA.ROUTINES r
		LEFT JOIN pg_catalog.pg_namespace n ON r.ROUTINE_SCHEMA = n.nspname
		LEFT JOIN pg_catalog.pg_proc p ON p.pronamespace = n.oid AND r.SPECIFIC_NAME = p.proname || '_' || p.oid
		LEFT JOIN (SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, COUNT(*)as cnt FROM INFORMATION_SCHEMA.parameters WHERE parameter_mode IN('OUT', 'INOUT') GROUP BY SPECIFIC_SCHEMA, SPECIFIC_NAME) as outp
			ON r.SPECIFIC_SCHEMA = outp.SPECIFIC_SCHEMA AND r.SPECIFIC_NAME = outp.SPECIFIC_NAME
		WHERE n.nspname NOT IN ('information_schema', 'pg_catalog') AND n.nspname IN ('public')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT SPECIFIC_CATALOG, SPECIFIC_SCHEMA, SPECIFIC_NAME, ORDINAL_POSITION, PARAMETER_MODE, PARAMETER_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.parameters

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT r.SPECIFIC_CATALOG, r.SPECIFIC_SCHEMA, r.SPECIFIC_NAME, r.DATA_TYPE
	FROM INFORMATION_SCHEMA.ROUTINES r
		LEFT JOIN pg_catalog.pg_namespace n ON r.ROUTINE_SCHEMA = n.nspname
		LEFT JOIN pg_catalog.pg_proc p ON p.pronamespace = n.oid AND r.SPECIFIC_NAME = p.proname || '_' || p.oid
		LEFT JOIN (SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, COUNT(*)as cnt FROM INFORMATION_SCHEMA.parameters WHERE parameter_mode IN('OUT', 'INOUT') GROUP BY SPECIFIC_SCHEMA, SPECIFIC_NAME) as outp
			ON r.SPECIFIC_SCHEMA = outp.SPECIFIC_SCHEMA AND r.SPECIFIC_NAME = outp.SPECIFIC_NAME
	WHERE r.DATA_TYPE <> 'record' AND r.DATA_TYPE <> 'void' AND p.proretset = false AND (outp.cnt IS NULL OR outp.cnt = 0)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT * FROM testdata.public."GetParentByID"(NULL::integer)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT * FROM testdata.public."TestTableFunction1"(NULL::integer,NULL::integer)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT * FROM testdata.public."TestTableFunctionSchema"()

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT * FROM testdata.public."TestTableFunction"(NULL::integer)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"AllTypes" t1

