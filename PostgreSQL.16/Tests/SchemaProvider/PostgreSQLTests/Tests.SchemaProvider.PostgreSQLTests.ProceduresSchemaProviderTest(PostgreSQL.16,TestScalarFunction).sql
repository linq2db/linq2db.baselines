-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SHOW server_version_num

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL


				SELECT
					t.table_catalog || '.' || t.table_schema || '.' || t.table_name            as TableID,
					t.table_catalog                                                            as CatalogName,
					t.table_schema                                                             as SchemaName,
					t.table_name                                                               as TableName,
					t.table_schema = 'public'                                           as IsDefaultSchema,
					t.table_type = 'VIEW'                                                      as IsView,
					(
						SELECT pgd.description
						FROM
							pg_catalog.pg_statio_all_tables as st
							JOIN pg_catalog.pg_description pgd ON pgd.objoid = st.relid
						WHERE t.table_schema = st.schemaname AND t.table_name=st.relname
						LIMIT 1
					)                                                                          as Description,
					left(t.table_schema, 3) = 'pg_' OR t.table_schema = 'information_schema'   as IsProviderSpecific
				FROM
					information_schema.tables t
				LEFT JOIN pg_inherits i ON (
				    SELECT c.oid
				    FROM pg_class c
				    JOIN pg_namespace n ON c.relnamespace = n.oid
				    WHERE c.relname = t.table_name AND n.nspname = t.table_schema
				) = i.inhrelid
				WHERE i.inhrelid IS NULL AND table_schema NOT IN ('information_schema', 'pg_catalog')
			UNION ALL
				SELECT
					current_database() || '.' || v.schemaname || '.' || v.matviewname          as TableID,
					current_database()                                                         as CatalogName,
					v.schemaname                                                               as SchemaName,
					v.matviewname                                                              as TableName,
					v.schemaname = 'public'                                             as IsDefaultSchema,
					true                                                                       as IsView,
					(
						SELECT pgd.description
							FROM pg_catalog.pg_class
								INNER JOIN pg_catalog.pg_namespace       ON pg_class.relnamespace = pg_namespace.oid
								INNER JOIN pg_catalog.pg_description pgd ON pgd.objoid = pg_class.oid
						WHERE pg_class.relkind = 'm' AND pgd.objsubid = 0 AND pg_namespace.nspname = v.schemaname AND pg_class.relname = v.matviewname
						LIMIT 1
					)                                                                          as Description,
					false                                                                      as IsProviderSpecific
				FROM pg_matviews v
				WHERE v.schemaname NOT IN ('information_schema', 'pg_catalog')

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

	SELECT
		current_database() || '.' || pg_namespace.nspname || '.' || pg_class.relname as TableID,
		pg_constraint.conname                                                        as PrimaryKeyName,
		attname                                                                      as ColumnName,
		attnum                                                                       as Ordinal
	FROM
		pg_attribute
			JOIN pg_constraint ON pg_attribute.attrelid = pg_constraint.conrelid AND pg_attribute.attnum = ANY(pg_constraint.conkey)
			JOIN pg_class      ON pg_class.oid = pg_constraint.conrelid
			JOIN pg_namespace  ON pg_class.relnamespace = pg_namespace.oid
	WHERE
		pg_constraint.contype = 'p'
	AND pg_namespace.nspname NOT IN ('information_schema', 'pg_catalog')

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL


				SELECT columns.TableID,
				       columns.Name,
				       columns.IsNullable,
				       columns.Ordinal,
				       columns.DataType,
				       columns.ArrayDimensions,
				       columns.Length,
				       columns.Precision,
				       columns.Scale,
				       columns.IsIdentity OR COALESCE(columns.DefaultValue ~* 'nextval', false) AS IsIdentity,
				       columns.SkipOnInsert,
				       columns.SkipOnUpdate,
				       columns.Description,
				       columns.IsCustomEnum,
				       columns.IsCustomRange
				FROM (
				         SELECT current_database() || '.' || ns.nspname || '.' || cls.relname                            AS TableID,
				                attr.attname                                                                             AS Name,
				                NOT (attr.attnotnull OR typ.typtype = 'd'::"char" AND typ.typnotnull)                    AS IsNullable,
				                attr.attnum                                                                              AS Ordinal,
				                CASE
				                    WHEN typ.typtype = 'd'::"char" THEN
				                        CASE
				                            WHEN nbt.nspname = 'pg_catalog'::name THEN format_type(typ.typbasetype, attr.atttypmod)
				                            ELSE 'USER-DEFINED'::text
				                        END
				                    ELSE
				                        CASE
				                            WHEN nt.nspname = 'pg_catalog'::name or typ.typtype = 'e'::"char" or typ.typtype = 'r'::"char" THEN format_type(attr.atttypid, attr.atttypmod)
				                            ELSE 'USER-DEFINED'::text
				                        END
				                    END                                                                                  AS DataType,
				                typ.typtype = 'e'::"char" and nt.nspname <> 'pg_catalog'::name                           AS IsCustomEnum,
				                typ.typtype = 'r'::"char" and nt.nspname <> 'pg_catalog'::name                           AS IsCustomRange,
				                attr.attndims                                                                            AS ArrayDimensions,
				                information_schema._pg_char_max_length(information_schema._pg_truetypid(attr.*, typ.*),
				                                                       information_schema._pg_truetypmod(attr.*, typ.*)) AS Length,
				                COALESCE(information_schema._pg_numeric_precision(
				                                 information_schema._pg_truetypid(attr.*, typ.*),
				                                 information_schema._pg_truetypmod(attr.*, typ.*)),
				                         information_schema._pg_datetime_precision(
				                                 information_schema._pg_truetypid(attr.*, typ.*),
				                                 information_schema._pg_truetypmod(attr.*, typ.*))
				                    )                                                                                    AS Precision,
				                information_schema._pg_numeric_scale(attr.atttypid, attr.atttypmod)                      AS Scale,
				                attr.attidentity IN ('a', 'd')                                                                         AS IsIdentity,
				                cls.relkind IN ('v', 'm')                                                                AS SkipOnInsert,
				                NOT (cls.relkind = 'r'::"char" OR cls.relkind = 'v'::"char"
				                    AND (EXISTS(SELECT 1
				                                FROM pg_rewrite
				                                WHERE pg_rewrite.ev_class = cls.oid
				                                  AND pg_rewrite.ev_type = '2'::"char"
				                                  AND pg_rewrite.is_instead))
				                    AND
				                                                  (EXISTS(SELECT 1
				                                                          FROM pg_rewrite
				                                                          WHERE pg_rewrite.ev_class = cls.oid
				                                                            AND pg_rewrite.ev_type = '4'::"char"
				                                                            AND pg_rewrite.is_instead))
				                    )                                                                                    AS SkipOnUpdate,
				                des.description                                                                          AS Description,
				                CASE
				                    WHEN atthasdef THEN (SELECT pg_get_expr(adbin, cls.oid)
				                                         FROM pg_attrdef
				                                         WHERE adrelid = cls.oid
				                                           AND adnum = attr.attnum)
				                    END                                                                                  AS DefaultValue

				         FROM pg_catalog.pg_class cls
				                  JOIN pg_namespace AS ns ON ns.oid = cls.relnamespace
				                  LEFT JOIN pg_attribute AS attr ON attr.attrelid = cls.oid
				                  LEFT JOIN pg_type AS typ ON attr.atttypid = typ.oid
				                  LEFT JOIN pg_proc ON pg_proc.oid = typ.typreceive
				                  LEFT JOIN pg_description AS des ON des.objoid = cls.oid AND des.objsubid = attr.attnum
				                  LEFT JOIN pg_collation AS coll ON coll.oid = attr.attcollation
				                  JOIN pg_namespace nt ON typ.typnamespace = nt.oid
				                  LEFT JOIN (pg_type bt
				                 JOIN pg_namespace nbt ON bt.typnamespace = nbt.oid)
				                            ON typ.typtype = 'd'::"char" AND typ.typbasetype = bt.oid
				         WHERE cls.relkind IN ('r', 'v', 'm', 'p')
				           AND attr.attnum > 0
				           AND NOT attr.attisdropped
				           AND ns.nspname NOT IN ('information_schema', 'pg_catalog')
				     ) columns;

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL


				SELECT
					pg_constraint.conname,
					current_database() || '.' || this_schema.nspname  || '.' || this_table.relname,
					current_database() || '.' || other_schema.nspname || '.' || other_table.relname,
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[01]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[02]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[03]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[04]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[05]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[06]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[07]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[08]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[09]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[10]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[11]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[12]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[13]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[14]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[15]),
					(select attname from pg_attribute where attrelid = pg_constraint.conrelid  and attnum = pg_constraint.conkey[16]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[01]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[02]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[03]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[04]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[05]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[06]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[07]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[08]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[09]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[10]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[11]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[12]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[13]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[14]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[15]),
					(select attname from pg_attribute where attrelid = pg_constraint.confrelid and attnum = pg_constraint.confkey[16])
				FROM
					pg_constraint
						JOIN pg_class as this_table ON this_table.oid = pg_constraint.conrelid
							JOIN pg_namespace as this_schema ON this_table.relnamespace = this_schema.oid
						JOIN pg_class as other_table ON other_table.oid = pg_constraint.confrelid
							JOIN pg_namespace as other_schema ON other_table.relnamespace = other_schema.oid
				WHERE
					pg_constraint.contype = 'f'
					AND this_schema.nspname NOT IN ('information_schema', 'pg_catalog')

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL


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
		WHERE n.nspname NOT IN ('information_schema', 'pg_catalog')

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT SPECIFIC_CATALOG, SPECIFIC_SCHEMA, SPECIFIC_NAME, ORDINAL_POSITION, PARAMETER_MODE, PARAMETER_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.parameters

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT r.SPECIFIC_CATALOG, r.SPECIFIC_SCHEMA, r.SPECIFIC_NAME, r.DATA_TYPE
	FROM INFORMATION_SCHEMA.ROUTINES r
		LEFT JOIN pg_catalog.pg_namespace n ON r.ROUTINE_SCHEMA = n.nspname
		LEFT JOIN pg_catalog.pg_proc p ON p.pronamespace = n.oid AND r.SPECIFIC_NAME = p.proname || '_' || p.oid
		LEFT JOIN (SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, COUNT(*)as cnt FROM INFORMATION_SCHEMA.parameters WHERE parameter_mode IN('OUT', 'INOUT') GROUP BY SPECIFIC_SCHEMA, SPECIFIC_NAME) as outp
			ON r.SPECIFIC_SCHEMA = outp.SPECIFIC_SCHEMA AND r.SPECIFIC_NAME = outp.SPECIFIC_NAME
	WHERE r.DATA_TYPE <> 'record' AND r.DATA_TYPE <> 'void' AND p.proretset = false AND (outp.cnt IS NULL OR outp.cnt = 0)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT * FROM testdata.public."GetParentByID"(NULL::integer)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT * FROM testdata.public."TestTableFunction1"(NULL::integer,NULL::integer)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT * FROM testdata.public."TestTableFunctionSchema"()

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT * FROM testdata.public."TestTableFunction"(NULL::integer)

RollbackTransaction
