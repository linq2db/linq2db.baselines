-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE temp_table_1
(
	"ID"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_temp_table_1" PRIMARY KEY ("ID")
)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO temp_table_1
(
	"ID",
	"Value"
)
VALUES
(1,'Value')

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE temp_table_2
(
	"Value" text NOT NULL,

	CONSTRAINT "PK_temp_table_2" PRIMARY KEY ("Value")
)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO temp_table_2
(
	"Value"
)
SELECT
	t1."Value_1"
FROM
	temp_table_1 gr
		INNER JOIN (
			SELECT
				c_1."Value" as "Value_1",
				ROW_NUMBER() OVER (PARTITION BY c_1."ID" ORDER BY c_1."ID") as rn,
				c_1."ID"
			FROM
				temp_table_1 c_1
		) t1 ON gr."ID" = t1."ID" AND t1.rn = 1

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS temp_table_2

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS temp_table_1

