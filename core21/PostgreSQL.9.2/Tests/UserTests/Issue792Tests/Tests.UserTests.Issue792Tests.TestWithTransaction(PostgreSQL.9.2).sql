﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SHOW  server_version_num

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL


SELECT	r.ROUTINE_CATALOG,
		r.ROUTINE_SCHEMA,
		r.ROUTINE_NAME,
		r.ROUTINE_TYPE,
		r.ROUTINE_DEFINITION,
		r.SPECIFIC_NAME,
		p.proisagg,
		p.proretset,
		r.DATA_TYPE,
		outp.cnt
	FROM INFORMATION_SCHEMA.ROUTINES r
		LEFT JOIN pg_catalog.pg_namespace n ON r.ROUTINE_SCHEMA = n.nspname
		LEFT JOIN pg_catalog.pg_proc p ON p.pronamespace = n.oid AND r.SPECIFIC_NAME = p.proname || '_' || p.oid
		LEFT JOIN (SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, COUNT(*) as cnt FROM INFORMATION_SCHEMA.parameters WHERE parameter_mode IN('OUT', 'INOUT') GROUP BY SPECIFIC_SCHEMA, SPECIFIC_NAME) as outp
			ON r.SPECIFIC_SCHEMA = outp.SPECIFIC_SCHEMA AND r.SPECIFIC_NAME = outp.SPECIFIC_NAME
		WHERE n.nspname NOT IN ('pg_catalog', 'information_schema') AND n.nspname IN ('public')

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT SPECIFIC_CATALOG, SPECIFIC_SCHEMA, SPECIFIC_NAME, ORDINAL_POSITION, PARAMETER_MODE, PARAMETER_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.parameters

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT r.SPECIFIC_CATALOG, r.SPECIFIC_SCHEMA, r.SPECIFIC_NAME, r.DATA_TYPE
	FROM INFORMATION_SCHEMA.ROUTINES r
		LEFT JOIN pg_catalog.pg_namespace n ON r.ROUTINE_SCHEMA = n.nspname
		LEFT JOIN pg_catalog.pg_proc p ON p.pronamespace = n.oid AND r.SPECIFIC_NAME = p.proname || '_' || p.oid
		LEFT JOIN (SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, COUNT(*)as cnt FROM INFORMATION_SCHEMA.parameters WHERE parameter_mode IN('OUT', 'INOUT') GROUP BY SPECIFIC_SCHEMA, SPECIFIC_NAME) as outp
			ON r.SPECIFIC_SCHEMA = outp.SPECIFIC_SCHEMA AND r.SPECIFIC_NAME = outp.SPECIFIC_NAME
	WHERE r.DATA_TYPE <> 'record' AND r.DATA_TYPE <> 'void' AND p.proretset = false AND (outp.cnt IS NULL OR outp.cnt = 0)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT * FROM testdata."public"."GetParentByID"(NULL::integer)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT * FROM testdata."public"."TestTableFunction1"(NULL::integer,NULL::integer)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT * FROM testdata."public"."TestTableFunction"(NULL::integer)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT * FROM testdata."public"."TestTableFunctionSchema"()

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"AllTypes" t1

