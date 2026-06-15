-- YDB Ydb

SELECT
	g_1.StatsTypeId as StatsTypeId,
	st.FullName as StatsTypeName,
	g_1.GroupId as GroupId
FROM
	GroupStatsType g_1
		LEFT JOIN StatsType st ON st.Id = g_1.StatsTypeId

