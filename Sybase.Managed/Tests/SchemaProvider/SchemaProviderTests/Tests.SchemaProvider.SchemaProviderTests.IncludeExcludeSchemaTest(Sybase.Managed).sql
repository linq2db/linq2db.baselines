BeforeExecute
-- Sybase.Managed Sybase

select @@unicharsize

BeforeExecute
-- Sybase.Managed Sybase

select @@ncharsize

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @db UniVarChar(255) -- String
SET     @db = 'TestDataCore'


SELECT
	id                                                 as TableID,
	@db                                                as CatalogName,
	USER_NAME(uid)                                     as SchemaName,
	name                                               as TableName,
	CASE WHEN type = 'V' THEN 1 ELSE 0 END             as IsView,
	CASE WHEN USER_NAME(uid) = 'dbo' THEN 1 ELSE 0 END as IsDefaultSchema
FROM
	sysobjects
WHERE
	type IN ('U','V')

BeforeExecute
-- Sybase.Managed Sybase


SELECT
	i.id                                                              as TableID,
	i.name                                                            as PrimaryKeyName,
	INDEX_COL(USER_NAME(o.uid) + '.' + o.name, i.indid, c.colid)      as ColumnName,
	INDEX_COLORDER(USER_NAME(o.uid) + '.' + o.name, i.indid, c.colid),
	c.colid                                                           as Ordinal
FROM
	sysindexes i
		JOIN sysobjects o ON i.id = o.id
		JOIN syscolumns c ON i.id = c.id
WHERE
	i.status2 & 2 = 2 AND
	i.status & 2048 = 2048 AND
	i.indid > 0 AND
	c.colid < i.keycnt + CASE WHEN i.indid = 1 THEN 1 ELSE 0 END

BeforeExecute
-- Sybase.Managed Sybase


SELECT
	o.id                                             as TableID,
	c.name                                           as Name,
	Convert(bit, c.status & 0x08)                    as IsNullable,
	c.colid                                          as Ordinal,
	t.name                                           as DataType,
	CASE
		WHEN t.name IN ('nvarchar', 'nchar') THEN c.length / @@ncharsize
		WHEN t.name IN ('univarchar', 'unichar') THEN c.length / @@unicharsize
		ELSE c.length
	END                                              as Length,
	c.prec                                           as [Precision],
	c.scale                                          as Scale,
	Convert(bit, c.status & 0x80)                    as IsIdentity,
	CASE WHEN t.name = 'timestamp' THEN 1 ELSE 0 END as SkipOnInsert,
	CASE WHEN t.name = 'timestamp' THEN 1 ELSE 0 END as SkipOnUpdate
FROM
	syscolumns c
		JOIN sysobjects o ON c.id       = o.id
		JOIN systypes   t ON c.usertype = t.usertype
WHERE
	o.type IN ('U','V')

BeforeExecute
-- Sybase.Managed Sybase

SELECT * FROM (
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey1)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey1)  as OtherColumn,
	1                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey2)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey2)  as OtherColumn,
	2                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey3)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey3)  as OtherColumn,
	3                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey4)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey4)  as OtherColumn,
	4                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey5)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey5)  as OtherColumn,
	5                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey6)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey6)  as OtherColumn,
	6                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey7)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey7)  as OtherColumn,
	7                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey8)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey8)  as OtherColumn,
	8                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey9)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey9)  as OtherColumn,
	9                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey10)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey10)  as OtherColumn,
	10                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey11)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey11)  as OtherColumn,
	11                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey12)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey12)  as OtherColumn,
	12                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey13)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey13)  as OtherColumn,
	13                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey14)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey14)  as OtherColumn,
	14                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey15)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey15)  as OtherColumn,
	15                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey16)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey16)  as OtherColumn,
	16                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64) as t WHERE ThisColumn IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

sp_oledb_stored_procedures

BeforeExecute
-- Sybase.Managed Sybase

sp_oledb_getprocedurecolumns

BeforeExecute
BeginTransaction
BeforeExecute
-- Sybase.Managed Sybase

SET FMTONLY ON

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @RETURN_VALUE Integer(10) -- Int32
SET     @RETURN_VALUE = 0

[TestDataCore].[dbo].[AddIssue792Record]

BeforeExecute
-- Sybase.Managed Sybase

SET FMTONLY OFF

BeforeExecute
-- Sybase.Managed Sybase

SET FMTONLY ON

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @RETURN_VALUE Integer(10) -- Int32
SET     @RETURN_VALUE = 0

[TestDataCore].[dbo].[Person_SelectAll]

BeforeExecute
-- Sybase.Managed Sybase

SET FMTONLY OFF

BeforeExecute
RollbackTransaction
BeforeExecute
-- Sybase.Managed Sybase

select @@unicharsize

BeforeExecute
-- Sybase.Managed Sybase

select @@ncharsize

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @db UniVarChar(255) -- String
SET     @db = 'TestDataCore'


SELECT
	id                                                 as TableID,
	@db                                                as CatalogName,
	USER_NAME(uid)                                     as SchemaName,
	name                                               as TableName,
	CASE WHEN type = 'V' THEN 1 ELSE 0 END             as IsView,
	CASE WHEN USER_NAME(uid) = 'dbo' THEN 1 ELSE 0 END as IsDefaultSchema
FROM
	sysobjects
WHERE
	type IN ('U','V')

BeforeExecute
-- Sybase.Managed Sybase


SELECT
	i.id                                                              as TableID,
	i.name                                                            as PrimaryKeyName,
	INDEX_COL(USER_NAME(o.uid) + '.' + o.name, i.indid, c.colid)      as ColumnName,
	INDEX_COLORDER(USER_NAME(o.uid) + '.' + o.name, i.indid, c.colid),
	c.colid                                                           as Ordinal
FROM
	sysindexes i
		JOIN sysobjects o ON i.id = o.id
		JOIN syscolumns c ON i.id = c.id
WHERE
	i.status2 & 2 = 2 AND
	i.status & 2048 = 2048 AND
	i.indid > 0 AND
	c.colid < i.keycnt + CASE WHEN i.indid = 1 THEN 1 ELSE 0 END

BeforeExecute
-- Sybase.Managed Sybase


SELECT
	o.id                                             as TableID,
	c.name                                           as Name,
	Convert(bit, c.status & 0x08)                    as IsNullable,
	c.colid                                          as Ordinal,
	t.name                                           as DataType,
	CASE
		WHEN t.name IN ('nvarchar', 'nchar') THEN c.length / @@ncharsize
		WHEN t.name IN ('univarchar', 'unichar') THEN c.length / @@unicharsize
		ELSE c.length
	END                                              as Length,
	c.prec                                           as [Precision],
	c.scale                                          as Scale,
	Convert(bit, c.status & 0x80)                    as IsIdentity,
	CASE WHEN t.name = 'timestamp' THEN 1 ELSE 0 END as SkipOnInsert,
	CASE WHEN t.name = 'timestamp' THEN 1 ELSE 0 END as SkipOnUpdate
FROM
	syscolumns c
		JOIN sysobjects o ON c.id       = o.id
		JOIN systypes   t ON c.usertype = t.usertype
WHERE
	o.type IN ('U','V')

BeforeExecute
-- Sybase.Managed Sybase

SELECT * FROM (
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey1)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey1)  as OtherColumn,
	1                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey2)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey2)  as OtherColumn,
	2                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey3)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey3)  as OtherColumn,
	3                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey4)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey4)  as OtherColumn,
	4                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey5)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey5)  as OtherColumn,
	5                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey6)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey6)  as OtherColumn,
	6                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey7)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey7)  as OtherColumn,
	7                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey8)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey8)  as OtherColumn,
	8                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey9)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey9)  as OtherColumn,
	9                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey10)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey10)  as OtherColumn,
	10                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey11)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey11)  as OtherColumn,
	11                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey12)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey12)  as OtherColumn,
	12                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey13)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey13)  as OtherColumn,
	13                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey14)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey14)  as OtherColumn,
	14                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey15)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey15)  as OtherColumn,
	15                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey16)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey16)  as OtherColumn,
	16                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64) as t WHERE ThisColumn IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

sp_oledb_stored_procedures

BeforeExecute
-- Sybase.Managed Sybase

sp_oledb_getprocedurecolumns

BeforeExecute
BeginTransaction
BeforeExecute
RollbackTransaction
BeforeExecute
-- Sybase.Managed Sybase

select @@unicharsize

BeforeExecute
-- Sybase.Managed Sybase

select @@ncharsize

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @db UniVarChar(255) -- String
SET     @db = 'TestDataCore'


SELECT
	id                                                 as TableID,
	@db                                                as CatalogName,
	USER_NAME(uid)                                     as SchemaName,
	name                                               as TableName,
	CASE WHEN type = 'V' THEN 1 ELSE 0 END             as IsView,
	CASE WHEN USER_NAME(uid) = 'dbo' THEN 1 ELSE 0 END as IsDefaultSchema
FROM
	sysobjects
WHERE
	type IN ('U','V')

BeforeExecute
-- Sybase.Managed Sybase


SELECT
	i.id                                                              as TableID,
	i.name                                                            as PrimaryKeyName,
	INDEX_COL(USER_NAME(o.uid) + '.' + o.name, i.indid, c.colid)      as ColumnName,
	INDEX_COLORDER(USER_NAME(o.uid) + '.' + o.name, i.indid, c.colid),
	c.colid                                                           as Ordinal
FROM
	sysindexes i
		JOIN sysobjects o ON i.id = o.id
		JOIN syscolumns c ON i.id = c.id
WHERE
	i.status2 & 2 = 2 AND
	i.status & 2048 = 2048 AND
	i.indid > 0 AND
	c.colid < i.keycnt + CASE WHEN i.indid = 1 THEN 1 ELSE 0 END

BeforeExecute
-- Sybase.Managed Sybase


SELECT
	o.id                                             as TableID,
	c.name                                           as Name,
	Convert(bit, c.status & 0x08)                    as IsNullable,
	c.colid                                          as Ordinal,
	t.name                                           as DataType,
	CASE
		WHEN t.name IN ('nvarchar', 'nchar') THEN c.length / @@ncharsize
		WHEN t.name IN ('univarchar', 'unichar') THEN c.length / @@unicharsize
		ELSE c.length
	END                                              as Length,
	c.prec                                           as [Precision],
	c.scale                                          as Scale,
	Convert(bit, c.status & 0x80)                    as IsIdentity,
	CASE WHEN t.name = 'timestamp' THEN 1 ELSE 0 END as SkipOnInsert,
	CASE WHEN t.name = 'timestamp' THEN 1 ELSE 0 END as SkipOnUpdate
FROM
	syscolumns c
		JOIN sysobjects o ON c.id       = o.id
		JOIN systypes   t ON c.usertype = t.usertype
WHERE
	o.type IN ('U','V')

BeforeExecute
-- Sybase.Managed Sybase

SELECT * FROM (
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey1)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey1)  as OtherColumn,
	1                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey2)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey2)  as OtherColumn,
	2                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey3)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey3)  as OtherColumn,
	3                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey4)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey4)  as OtherColumn,
	4                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey5)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey5)  as OtherColumn,
	5                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey6)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey6)  as OtherColumn,
	6                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey7)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey7)  as OtherColumn,
	7                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey8)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey8)  as OtherColumn,
	8                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey9)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey9)  as OtherColumn,
	9                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey10)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey10)  as OtherColumn,
	10                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey11)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey11)  as OtherColumn,
	11                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey12)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey12)  as OtherColumn,
	12                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey13)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey13)  as OtherColumn,
	13                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey14)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey14)  as OtherColumn,
	14                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey15)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey15)  as OtherColumn,
	15                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64
UNION ALL
SELECT
	o.name                           as Name,
	c.tableid                        as ThisTableID,
	r.reftabid                       as OtherTableID,
	COL_NAME(c.tableid,  r.fokey16)   as ThisColumn,
	COL_NAME(r.reftabid, r.refkey16)  as OtherColumn,
	16                              as Ordinal
FROM
	sysreferences r
		JOIN sysconstraints c ON r.constrid = c.constrid
			JOIN sysobjects o  ON c.constrid = o.id
			JOIN sysobjects o3 ON c.tableid  = o3.id
		LEFT JOIN sysobjects o2 ON r.reftabid = o2.id
		JOIN sysreferences r2 ON r.constrid = r2.constrid
			LEFT JOIN sysindexes i ON r2.indexid = i.indid AND r2.reftabid = i.id
WHERE
	c.status = 64) as t WHERE ThisColumn IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

sp_oledb_stored_procedures

BeforeExecute
-- Sybase.Managed Sybase

sp_oledb_getprocedurecolumns

BeforeExecute
BeginTransaction
BeforeExecute
RollbackTransaction
