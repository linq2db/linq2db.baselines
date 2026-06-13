-- YDB Ydb

CREATE TABLE temp_table_1
(
	ID      Int32,
	`Value` Text,

	PRIMARY KEY (ID)
)

INSERT ASYNC BULK temp_table_1(ID, Value)

-- YDB Ydb

CREATE TABLE temp_table_2
(
	`Value` Text,

	PRIMARY KEY (`Value`)
)

-- YDB Ydb

INSERT INTO temp_table_2
(
	`Value`
)
SELECT
	t1.Value_1 as `Value`
FROM
	temp_table_1 gr
		INNER JOIN (
			SELECT
				c_1.`Value` as Value_1,
				ROW_NUMBER() OVER (PARTITION BY c_1.ID ORDER BY c_1.ID) as rn,
				c_1.ID as ID
			FROM
				temp_table_1 c_1
		) t1 ON gr.ID = t1.ID
WHERE
	t1.rn = 1

-- YDB Ydb

DROP TABLE IF EXISTS temp_table_2

-- YDB Ydb

DROP TABLE IF EXISTS temp_table_1

