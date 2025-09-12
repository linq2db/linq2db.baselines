BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE temp_table_1
(
	"ID"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_temp_table_1" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO temp_table_1
(
	"ID",
	"Value"
)
VALUES
(1,'Value')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE temp_table_2
(
	"Value" text NOT NULL,

	CONSTRAINT "PK_temp_table_2" PRIMARY KEY ("Value")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO temp_table_2
(
	"Value"
)
SELECT
	t1."Value_1"
FROM
	(
		SELECT
			gr."ID"
		FROM
			temp_table_1 gr
		GROUP BY
			gr."ID"
	) gr_1
		INNER JOIN LATERAL (
			SELECT
				c_1."Value" as "Value_1"
			FROM
				temp_table_1 c_1
			WHERE
				gr_1."ID" = c_1."ID"
			LIMIT 1
		) t1 ON 1=1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS temp_table_2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS temp_table_1

