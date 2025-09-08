BeforeExecute
-- SQLite.MS SQLite


CREATE TABLE withid_1(x INTEGER PRIMARY KEY ASC, y, z);
CREATE TABLE withid_2(x INTEGER, y, z, PRIMARY KEY(x ASC));
CREATE TABLE withid_3(x INTEGER, y, z, PRIMARY KEY(x DESC));
CREATE TABLE withoutid_1(x INTEGER PRIMARY KEY DESC, y, z);
CREATE TABLE withoutid_2(x INTEGER PRIMARY KEY ASC, y, z) without rowid;
CREATE TABLE withoutid_3(x INTEGER, y, z, PRIMARY KEY(x ASC)) without rowid;
CREATE TABLE withoutid_4(x INTEGER, y, z, PRIMARY KEY(x DESC)) without rowid;

BeforeExecute
-- SQLite.MS SQLite


				SELECT
					t.schema || '..' || t.name AS TableID,
					''                         AS CatalogName,
					t.schema                   AS SchemaName,
					t.name                     AS TableName,
					t.schema = 'main'          AS IsDefaultSchema,
					t.type = 'view'            AS IsView
				FROM pragma_table_list() t
				WHERE t.type IN ('table', 'view') AND t.name NOT IN ('sqlite_sequence', 'sqlite_schema') AND t.schema = 'main'
			

BeforeExecute
-- SQLite.MS SQLite


				SELECT
					t.schema || '..' || t.name AS TableID,
					i.name                     AS PrimaryKeyName,
					c.name                     AS ColumnName,
					c.pk - 1                   AS Ordinal
				FROM pragma_table_list() t
					LEFT OUTER JOIN pragma_table_info(t.name) c
					LEFT OUTER JOIN pragma_index_list(t.name) i ON i.origin = 'pk'
				WHERE t.type IN ('table', 'view') AND c.pk != 0 AND t.name NOT IN ('sqlite_sequence', 'sqlite_schema') AND t.schema = 'main'
			

BeforeExecute
-- SQLite.MS SQLite


					WITH pk_counts AS (
						SELECT
							t.name   AS table_name,
							COUNT(*) AS pk_count
						FROM pragma_table_list() t
							JOIN pragma_table_info(t.name) c
						WHERE c.pk > 0
						GROUP BY t.name
					)
					SELECT
						t.schema || '..' || t.name                                                                    AS TableID,
						c.name                                                                                        AS Name,
						c.[notnull] = 0                                                                               AS IsNullable,
						c.cid                                                                                         AS Ordinal,
						c.type                                                                                        AS DataType,
						(pk.pk_count = 1
							AND c.pk = 1
							AND UPPER(c.type) = 'INTEGER'
							AND m.sql NOT LIKE '%PRIMARY KEY DESC%'
							AND (m.sql LIKE '%AUTOINCREMENT%' OR m.sql NOT LIKE '%WITHOUT ROWID%'))                   AS [IsIdentity]
					FROM pragma_table_list() t
						LEFT OUTER JOIN pragma_table_info(t.name) c
						INNER JOIN sqlite_master m ON m.tbl_name = t.name AND m.type IN ('table', 'view')
						LEFT JOIN pk_counts pk ON pk.table_name = t.name
					WHERE t.type IN ('table', 'view') AND t.name NOT IN ('sqlite_sequence', 'sqlite_schema') AND t.schema = 'main'
				

BeforeExecute
-- SQLite.MS SQLite


				SELECT
					t.schema AS SchemaName,
					t.name   AS TableName
				FROM pragma_table_list() t
				WHERE t.type IN ('view') AND t.name NOT IN ('sqlite_sequence', 'sqlite_schema') AND t.schema = 'main'
			

BeforeExecute
-- SQLite.MS SQLite

SELECT * FROM [AllTypesView]

BeforeExecute
-- SQLite.MS SQLite


				SELECT
					'FK_' || tThis.name || '_' || f.id   AS Name,
					tThis.schema || '..' || tThis.name   AS ThisTableID,
					f.[from]                             AS ThisColumn,
					tOther.schema || '..' || tOther.name AS OtherTableID,
					coalesce(f.[to], cOther.name)        AS OtherColumn,
					f.seq                                AS Ordinal
				FROM pragma_table_list() tThis
					LEFT OUTER JOIN pragma_foreign_key_list(tThis.name) f
					INNER JOIN pragma_table_list() tOther ON f.[table] = tOther.name
					LEFT JOIN pragma_table_info(tOther.name) cOther ON (cOther.pk -1) == f.seq
				WHERE tThis.type IN ('table', 'view') AND tThis.name NOT IN ('sqlite_sequence', 'sqlite_schema') AND tThis.schema = 'main'
			

BeforeExecute
-- SQLite.MS SQLite


DROP TABLE withid_1;
DROP TABLE withid_2;
DROP TABLE withid_3;
DROP TABLE withoutid_1;
DROP TABLE withoutid_2;
DROP TABLE withoutid_3;
DROP TABLE withoutid_4;

