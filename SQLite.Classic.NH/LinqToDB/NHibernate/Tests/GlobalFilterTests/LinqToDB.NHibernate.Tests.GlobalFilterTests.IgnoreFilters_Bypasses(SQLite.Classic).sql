-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_documents]


INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select last_insert_rowid();@p0 = 'A' [Type: String (0:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select last_insert_rowid();@p0 = 'B' [Type: String (0:0:0)], @p1 = 1 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select last_insert_rowid();@p0 = 'C' [Type: String (0:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]

-- SQLite.Classic SQLite
SELECT
	[d].[title]
FROM
	[l2dbnh_documents] [d]
ORDER BY
	[d].[title]


