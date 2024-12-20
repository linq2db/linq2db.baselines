BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Sample

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Sample
(
	SampleId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Source

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Source
(
	Key1 Int32,
	Key2 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SelectionMap

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SelectionMap
(
	Key1              Int32,
	Key2              Int32,
	SelectionProperty Decimal128(10)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS YearMap

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS YearMap
(
	StartDate DateTime64(7),
	EndDate   DateTime64(7),
	Year      Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	source_2.Id,
	year_1.Year,
	year_1.StartDate,
	year_1.EndDate
FROM
	YearMap year_1
		CROSS JOIN (
			SELECT
				entity.SampleId as Id
			FROM
				Source source_1
					INNER JOIN SelectionMap map_1 ON source_1.Key1 = map_1.Key1 AND source_1.Key2 = map_1.Key2,
				Sample entity
		) source_2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS YearMap

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SelectionMap

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Source

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Sample

