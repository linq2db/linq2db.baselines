-- SqlServer.2008
DELETE [t1]
FROM
	[l2dbnh_documents] [t1]


INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select SCOPE_IDENTITY();@p0 = 'A' [Type: String (4000:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select SCOPE_IDENTITY();@p0 = 'B' [Type: String (4000:0:0)], @p1 = 1 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select SCOPE_IDENTITY();@p0 = 'C' [Type: String (4000:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]

-- SqlServer.2008
SELECT
	[d].[title]
FROM
	[l2dbnh_documents] [d]
ORDER BY
	[d].[title]


