﻿Parameters:
p0='?' (DbType = Int32), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [l].[CategoryID], [l].[CategoryName], [l].[Description], [l].[IsDeleted], [l].[Picture]
FROM (
    SELECT * FROM [dbo].[Categories] WHERE CategoryId = @p0
) AS [l]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([l].[IsDeleted] = CAST(0 AS bit))) OR ([l].[IsDeleted] = CAST(0 AS bit))


