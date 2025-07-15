BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE temp_table_2
(
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO temp_table_2
(
	Value
)
SELECT
	t1.Value_1
FROM
	(
		SELECT
			gr.ID as ID
		FROM
			temp_table_1 gr
		GROUP BY
			gr.ID
	) gr_1
		INNER JOIN (
			SELECT
				c_1.Value as Value_1,
				ROW_NUMBER() OVER (PARTITION BY c_1.ID ORDER BY c_1.ID) as rn,
				c_1.ID as ID
			FROM
				temp_table_1 c_1
		) t1 ON gr_1.ID = t1.ID AND t1.rn <= 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS temp_table_2

