﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Coalesce(t.Nullable1, t.Nullable2, t.Nullable3, t.Id),
	Coalesce(t.Nullable2, t.Nullable1, t.Nullable3, t.Id),
	Coalesce(t.Nullable2, t.Nullable3, t.Nullable1, t.Id),
	Coalesce(t.Nullable3, t.Nullable1, t.Nullable2, t.Id),
	Coalesce(t.Nullable3, t.Nullable2, t.Nullable1, t.Id),
	t.Id,
	Coalesce(t.Nullable1, t.Id),
	Coalesce(t.Nullable1, t.Nullable2, t.Id)
FROM
	CoalesceNullableFields t

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Nullable1,
	t1.Nullable2,
	t1.Nullable3
FROM
	CoalesceNullableFields t1

