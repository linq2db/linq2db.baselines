BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CoalesceNullableFields

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CoalesceNullableFields
(
	Id        Int32,
	Nullable1 Nullable(Int32),
	Nullable2 Nullable(Int32),
	Nullable3 Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CoalesceNullableFields
(
	Id,
	Nullable1,
	Nullable2,
	Nullable3
)
VALUES
(1,10,NULL,NULL),
(2,NULL,20,NULL),
(3,NULL,NULL,30),
(4,NULL,NULL,NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Coalesce(t.Nullable1, t.Nullable2, t.Nullable3, t.Id),
	Coalesce(t.Nullable2, t.Nullable1, t.Nullable3, t.Id),
	Coalesce(t.Nullable2, t.Nullable3, t.Nullable1, t.Id),
	Coalesce(t.Nullable3, t.Nullable1, t.Nullable2, t.Id),
	Coalesce(t.Nullable3, t.Nullable2, t.Nullable1, t.Id)
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

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CoalesceNullableFields

