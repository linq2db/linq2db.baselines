-- SqlServer.2005.MS SqlServer.2005
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @p2 Variant(12) -- Object
SET     @p2 = N'string value'
DECLARE @p3 Int -- Int32
SET     @p3 = 2
DECLARE @p4 Variant -- Object
SET     @p4 = 1728000000000

INSERT INTO [VariantTable]
(
	[Id],
	[Value]
)
SELECT @p1,@p2 UNION ALL
SELECT @p3,@p4

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[VariantTable] [t1]
ORDER BY
	[t1].[Id]

