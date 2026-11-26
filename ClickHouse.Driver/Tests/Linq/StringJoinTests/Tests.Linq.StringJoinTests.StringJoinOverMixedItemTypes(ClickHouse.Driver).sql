-- ClickHouse.Driver ClickHouse
SELECT
	arrayStringConcat([e.Value1, Coalesce(e.Name, ''), e.Id], ',')
FROM
	JoinProbeEntity e

