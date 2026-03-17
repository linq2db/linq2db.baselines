-- SqlServer.2025.MS SqlServer.2025
DECLARE @id Int -- Int32
SET     @id = 1

WITH [cte] ([Field1], [Field2], [Field3])
AS
(
	SELECT
		[le].[Id],
		[le].[Field1],
		[le].[Field2]
	FROM
		[CteGroupByTable1] [le]
			INNER JOIN [CteGroupByTable2] [l] ON [le].[Field1] = [l].[Id]
	WHERE
		[le].[Field1] = @id
	UNION ALL
	SELECT
		[suble].[Id],
		[suble].[Field1],
		[suble].[Field2]
	FROM
		[cte] [t1]
			INNER JOIN [CteGroupByTable1] [suble] ON [t1].[Field3] = [suble].[Field1]
			INNER JOIN [CteGroupByTable2] [l_1] ON [suble].[Field1] = [l_1].[Id]
	WHERE
		[suble].[Field2] IS NOT NULL
)
SELECT
	[m_1].[Key_1],
	[d].[Field1],
	[d].[Field2],
	[d].[Field3]
FROM
	(
		SELECT DISTINCT
			[t2].[Field2] as [Key_1]
		FROM
			[cte] [t2]
	) [m_1]
		INNER JOIN [cte] [d] ON [m_1].[Key_1] = [d].[Field2]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @id Int -- Int32
SET     @id = 1

WITH [cte] ([Field2], [Field3])
AS
(
	SELECT
		[le].[Field1],
		[le].[Field2]
	FROM
		[CteGroupByTable1] [le]
			INNER JOIN [CteGroupByTable2] [l] ON [le].[Field1] = [l].[Id]
	WHERE
		[le].[Field1] = @id
	UNION ALL
	SELECT
		[suble].[Field1],
		[suble].[Field2]
	FROM
		[cte] [t1]
			INNER JOIN [CteGroupByTable1] [suble] ON [t1].[Field3] = [suble].[Field1]
			INNER JOIN [CteGroupByTable2] [l_1] ON [suble].[Field1] = [l_1].[Id]
	WHERE
		[suble].[Field2] IS NOT NULL
)
SELECT DISTINCT
	[t2].[Field2]
FROM
	[cte] [t2]

