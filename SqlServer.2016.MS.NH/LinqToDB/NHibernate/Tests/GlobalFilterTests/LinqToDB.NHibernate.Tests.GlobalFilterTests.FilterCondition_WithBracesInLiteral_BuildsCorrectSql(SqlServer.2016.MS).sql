-- SqlServer.2008
DELETE [t1]
FROM
	[l2dbnh_documents] [t1]


INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select SCOPE_IDENTITY();@p0 = 'A' [Type: String (4000:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select SCOPE_IDENTITY();@p0 = 'B' [Type: String (4000:0:0)], @p1 = 1 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select SCOPE_IDENTITY();@p0 = 'C' [Type: String (4000:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (@p0, @p1, @p2); select SCOPE_IDENTITY();@p0 = 'x{y}z' [Type: String (4000:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

-- SqlServer.2008
SELECT
	[e].[title]
FROM
	[l2dbnh_documents] [e]
WHERE
	[e].[title] <> 'x{y}z'
ORDER BY
	[e].[title]


select document0_.title as col_0_0_ from l2dbnh_documents document0_ where document0_.Title <> 'x{y}z' order by document0_.title asc

