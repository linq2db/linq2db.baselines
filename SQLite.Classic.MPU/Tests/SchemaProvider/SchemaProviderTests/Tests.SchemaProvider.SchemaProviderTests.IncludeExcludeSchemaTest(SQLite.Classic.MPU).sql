BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					t.schema || '..' || t.name as TableID,
					'' as CatalogName,
					t.schema as SchemaName,
					t.name as TableName,
					t.schema = 'main' as IsDefaultSchema
				FROM pragma_table_list() t
				WHERE t.type IN ('table', 'view')
				;
			

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					t.schema || '..' || t.name as TableID,
					i.name AS PrimaryKeyName,
					c.name AS ColumnName,
					c.pk - 1 AS Ordinal
				FROM pragma_table_list() t
				LEFT OUTER JOIN pragma_table_info(t.name) c
				LEFT OUTER JOIN pragma_index_list(t.name) i ON i.origin = 'pk'
				WHERE t.type IN ('table', 'view') AND c.pk != 0
				;
			

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


					WITH pk_counts AS (
						SELECT t.name AS table_name, COUNT(*) AS pk_count
						FROM pragma_table_list() t
						JOIN pragma_table_info(t.name) c
						WHERE c.pk > 0
						GROUP BY t.name
					)
					SELECT
						t.schema || '..' || t.name as TableID,
						c.name as Name,
						c.[notnull] = 0 as IsNullable,
						c.cid as Ordinal,
						c.type as DataType,
						(pk.pk_count = 1 AND c.pk = 1 AND UPPER(c.type) = 'INTEGER' AND m.sql LIKE '%AUTOINCREMENT%') as [IsIdentity]						
					FROM pragma_table_list() t
					LEFT OUTER JOIN pragma_table_info(t.name) c
					INNER JOIN sqlite_master m ON m.tbl_name = t.name AND m.type IN ('table', 'view')
					LEFT JOIN pk_counts pk ON pk.table_name = t.name
					WHERE t.type IN ('table', 'view');
				

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					'FK_' || tThis.name || '_' || f.id || '_' || f.seq as Name,
					tThis.schema || '..' || tThis.name as ThisTableID,
					f.[from] as ThisColumn,
					tOther.schema || '..' || tOther.name as OtherTableID,
					coalesce(f.[to], cOther.name) as OtherColumn,
					f.seq as Ordinal
				FROM pragma_table_list() tThis
				LEFT OUTER JOIN pragma_foreign_key_list(tThis.name) f
				INNER JOIN pragma_table_list() tOther on f.[table] = tOther.name
				LEFT JOIN pragma_table_info(tOther.name) cOther ON (cOther.pk -1) == f.seq
				WHERE tThis.type IN ('table', 'view');
			

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					t.schema || '..' || t.name as TableID,
					'' as CatalogName,
					t.schema as SchemaName,
					t.name as TableName,
					t.schema = 'main' as IsDefaultSchema
				FROM pragma_table_list() t
				WHERE t.type IN ('table', 'view')
				;
			

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					t.schema || '..' || t.name as TableID,
					i.name AS PrimaryKeyName,
					c.name AS ColumnName,
					c.pk - 1 AS Ordinal
				FROM pragma_table_list() t
				LEFT OUTER JOIN pragma_table_info(t.name) c
				LEFT OUTER JOIN pragma_index_list(t.name) i ON i.origin = 'pk'
				WHERE t.type IN ('table', 'view') AND c.pk != 0
				;
			

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


					WITH pk_counts AS (
						SELECT t.name AS table_name, COUNT(*) AS pk_count
						FROM pragma_table_list() t
						JOIN pragma_table_info(t.name) c
						WHERE c.pk > 0
						GROUP BY t.name
					)
					SELECT
						t.schema || '..' || t.name as TableID,
						c.name as Name,
						c.[notnull] = 0 as IsNullable,
						c.cid as Ordinal,
						c.type as DataType,
						(pk.pk_count = 1 AND c.pk = 1 AND UPPER(c.type) = 'INTEGER' AND m.sql LIKE '%AUTOINCREMENT%') as [IsIdentity]						
					FROM pragma_table_list() t
					LEFT OUTER JOIN pragma_table_info(t.name) c
					INNER JOIN sqlite_master m ON m.tbl_name = t.name AND m.type IN ('table', 'view')
					LEFT JOIN pk_counts pk ON pk.table_name = t.name
					WHERE t.type IN ('table', 'view');
				

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					'FK_' || tThis.name || '_' || f.id || '_' || f.seq as Name,
					tThis.schema || '..' || tThis.name as ThisTableID,
					f.[from] as ThisColumn,
					tOther.schema || '..' || tOther.name as OtherTableID,
					coalesce(f.[to], cOther.name) as OtherColumn,
					f.seq as Ordinal
				FROM pragma_table_list() tThis
				LEFT OUTER JOIN pragma_foreign_key_list(tThis.name) f
				INNER JOIN pragma_table_list() tOther on f.[table] = tOther.name
				LEFT JOIN pragma_table_info(tOther.name) cOther ON (cOther.pk -1) == f.seq
				WHERE tThis.type IN ('table', 'view');
			

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					t.schema || '..' || t.name as TableID,
					'' as CatalogName,
					t.schema as SchemaName,
					t.name as TableName,
					t.schema = 'main' as IsDefaultSchema
				FROM pragma_table_list() t
				WHERE t.type IN ('table', 'view')
				;
			

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					t.schema || '..' || t.name as TableID,
					i.name AS PrimaryKeyName,
					c.name AS ColumnName,
					c.pk - 1 AS Ordinal
				FROM pragma_table_list() t
				LEFT OUTER JOIN pragma_table_info(t.name) c
				LEFT OUTER JOIN pragma_index_list(t.name) i ON i.origin = 'pk'
				WHERE t.type IN ('table', 'view') AND c.pk != 0
				;
			

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


					WITH pk_counts AS (
						SELECT t.name AS table_name, COUNT(*) AS pk_count
						FROM pragma_table_list() t
						JOIN pragma_table_info(t.name) c
						WHERE c.pk > 0
						GROUP BY t.name
					)
					SELECT
						t.schema || '..' || t.name as TableID,
						c.name as Name,
						c.[notnull] = 0 as IsNullable,
						c.cid as Ordinal,
						c.type as DataType,
						(pk.pk_count = 1 AND c.pk = 1 AND UPPER(c.type) = 'INTEGER' AND m.sql LIKE '%AUTOINCREMENT%') as [IsIdentity]						
					FROM pragma_table_list() t
					LEFT OUTER JOIN pragma_table_info(t.name) c
					INNER JOIN sqlite_master m ON m.tbl_name = t.name AND m.type IN ('table', 'view')
					LEFT JOIN pk_counts pk ON pk.table_name = t.name
					WHERE t.type IN ('table', 'view');
				

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


				SELECT
					'FK_' || tThis.name || '_' || f.id || '_' || f.seq as Name,
					tThis.schema || '..' || tThis.name as ThisTableID,
					f.[from] as ThisColumn,
					tOther.schema || '..' || tOther.name as OtherTableID,
					coalesce(f.[to], cOther.name) as OtherColumn,
					f.seq as Ordinal
				FROM pragma_table_list() tThis
				LEFT OUTER JOIN pragma_foreign_key_list(tThis.name) f
				INNER JOIN pragma_table_list() tOther on f.[table] = tOther.name
				LEFT JOIN pragma_table_info(tOther.name) cOther ON (cOther.pk -1) == f.seq
				WHERE tThis.type IN ('table', 'view');
			

