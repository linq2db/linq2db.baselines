BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table1
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(1,2)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table2
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	temp_table1 t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	temp_table2 t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(2,3)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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

BeforeExecute
INSERT ASYNC BULK temp_table1(ID, Value)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

TRUNCATE TABLE temp_table1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

TRUNCATE TABLE temp_table2

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS temp_table2

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS temp_table1

