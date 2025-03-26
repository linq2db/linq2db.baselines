BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE temp_table_2
(
	"Value" text     NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS temp_table_2

