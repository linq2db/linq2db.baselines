BeforeExecute
-- SqlCe


SELECT
	COALESCE(TABLE_CATALOG, '') + '.' + COALESCE(TABLE_SCHEMA, '') + '.' + TABLE_NAME AS TableID,
	INDEX_NAME                                            AS PrimaryKeyName,
	COLUMN_NAME                                           AS ColumnName,
	ORDINAL_POSITION                                      AS Ordinal
FROM INFORMATION_SCHEMA.INDEXES
WHERE PRIMARY_KEY = 1

BeforeExecute
-- SqlCe


SELECT
	COALESCE(rc.CONSTRAINT_CATALOG,        '') + '.' + COALESCE(rc.CONSTRAINT_SCHEMA,        '') + '.' + rc.CONSTRAINT_TABLE_NAME        ThisTableID,
	COALESCE(rc.UNIQUE_CONSTRAINT_CATALOG, '') + '.' + COALESCE(rc.UNIQUE_CONSTRAINT_SCHEMA, '') + '.' + rc.UNIQUE_CONSTRAINT_TABLE_NAME OtherTableID,
	rc.CONSTRAINT_NAME                                                                                                                   Name,
	tc.COLUMN_NAME                                                                                                                       ThisColumn,
	oc.COLUMN_NAME                                                                                                                       OtherColumn,
	tc.ORDINAL_POSITION                                                                                                                  Ordinal
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS rc
	INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE tc ON tc.CONSTRAINT_NAME = rc.CONSTRAINT_NAME
		AND tc.TABLE_NAME = rc.CONSTRAINT_TABLE_NAME
	INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE oc ON oc.CONSTRAINT_NAME = rc.UNIQUE_CONSTRAINT_NAME
		AND oc.TABLE_NAME = rc.UNIQUE_CONSTRAINT_TABLE_NAME
		AND tc.ORDINAL_POSITION = oc.ORDINAL_POSITION

BeforeExecute
-- SqlCe


SELECT
	COALESCE(TABLE_CATALOG, '') + '.' + COALESCE(TABLE_SCHEMA, '') + '.' + TABLE_NAME AS TableID,
	INDEX_NAME                                            AS PrimaryKeyName,
	COLUMN_NAME                                           AS ColumnName,
	ORDINAL_POSITION                                      AS Ordinal
FROM INFORMATION_SCHEMA.INDEXES
WHERE PRIMARY_KEY = 1

BeforeExecute
-- SqlCe


SELECT
	COALESCE(rc.CONSTRAINT_CATALOG,        '') + '.' + COALESCE(rc.CONSTRAINT_SCHEMA,        '') + '.' + rc.CONSTRAINT_TABLE_NAME        ThisTableID,
	COALESCE(rc.UNIQUE_CONSTRAINT_CATALOG, '') + '.' + COALESCE(rc.UNIQUE_CONSTRAINT_SCHEMA, '') + '.' + rc.UNIQUE_CONSTRAINT_TABLE_NAME OtherTableID,
	rc.CONSTRAINT_NAME                                                                                                                   Name,
	tc.COLUMN_NAME                                                                                                                       ThisColumn,
	oc.COLUMN_NAME                                                                                                                       OtherColumn,
	tc.ORDINAL_POSITION                                                                                                                  Ordinal
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS rc
	INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE tc ON tc.CONSTRAINT_NAME = rc.CONSTRAINT_NAME
		AND tc.TABLE_NAME = rc.CONSTRAINT_TABLE_NAME
	INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE oc ON oc.CONSTRAINT_NAME = rc.UNIQUE_CONSTRAINT_NAME
		AND oc.TABLE_NAME = rc.UNIQUE_CONSTRAINT_TABLE_NAME
		AND tc.ORDINAL_POSITION = oc.ORDINAL_POSITION

BeforeExecute
-- SqlCe


SELECT
	COALESCE(TABLE_CATALOG, '') + '.' + COALESCE(TABLE_SCHEMA, '') + '.' + TABLE_NAME AS TableID,
	INDEX_NAME                                            AS PrimaryKeyName,
	COLUMN_NAME                                           AS ColumnName,
	ORDINAL_POSITION                                      AS Ordinal
FROM INFORMATION_SCHEMA.INDEXES
WHERE PRIMARY_KEY = 1

BeforeExecute
-- SqlCe


SELECT
	COALESCE(rc.CONSTRAINT_CATALOG,        '') + '.' + COALESCE(rc.CONSTRAINT_SCHEMA,        '') + '.' + rc.CONSTRAINT_TABLE_NAME        ThisTableID,
	COALESCE(rc.UNIQUE_CONSTRAINT_CATALOG, '') + '.' + COALESCE(rc.UNIQUE_CONSTRAINT_SCHEMA, '') + '.' + rc.UNIQUE_CONSTRAINT_TABLE_NAME OtherTableID,
	rc.CONSTRAINT_NAME                                                                                                                   Name,
	tc.COLUMN_NAME                                                                                                                       ThisColumn,
	oc.COLUMN_NAME                                                                                                                       OtherColumn,
	tc.ORDINAL_POSITION                                                                                                                  Ordinal
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS rc
	INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE tc ON tc.CONSTRAINT_NAME = rc.CONSTRAINT_NAME
		AND tc.TABLE_NAME = rc.CONSTRAINT_TABLE_NAME
	INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE oc ON oc.CONSTRAINT_NAME = rc.UNIQUE_CONSTRAINT_NAME
		AND oc.TABLE_NAME = rc.UNIQUE_CONSTRAINT_TABLE_NAME
		AND tc.ORDINAL_POSITION = oc.ORDINAL_POSITION

