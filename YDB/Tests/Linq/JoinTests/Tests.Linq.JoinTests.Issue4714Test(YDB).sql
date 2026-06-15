-- YDB Ydb

SELECT
	t1.SampleId as Id,
	year_1.`Year` as Year_1,
	year_1.StartDate as StartDate,
	year_1.EndDate as EndDate
FROM
	YearMap year_1
		CROSS JOIN (
			SELECT
				entity.SampleId as SampleId
			FROM
				Source source_1
					INNER JOIN SelectionMap map_1 ON source_1.Key1 = map_1.Key1 AND source_1.Key2 = map_1.Key2
					CROSS JOIN Sample entity
		) t1

