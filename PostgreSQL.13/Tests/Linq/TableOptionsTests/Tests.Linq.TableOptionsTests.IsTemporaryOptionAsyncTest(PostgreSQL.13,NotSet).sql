-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE temp_table1
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(1,2)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE temp_table2
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO temp_table2
(
	"ID",
	"Value"
)
SELECT
	t1."ID",
	t1."Value"
FROM
	temp_table1 t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	temp_table1 t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	temp_table2 t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(2,3)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value Integer -- Int32
SET     @Value = 3

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(
	:ID,
	:Value
)

INSERT ASYNC BULK temp_table1(ID, Value)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

TRUNCATE TABLE temp_table1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

TRUNCATE TABLE temp_table2

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS temp_table2

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS temp_table1

