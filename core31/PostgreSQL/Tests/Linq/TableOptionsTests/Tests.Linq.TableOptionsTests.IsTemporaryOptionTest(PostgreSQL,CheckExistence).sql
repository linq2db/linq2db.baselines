BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table1
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(1,2)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table2
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(2,3)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 3

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(
	:ID,
	:Value_1
)

BeforeExecute
INSERT BULK temp_table1(ID, Value

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

TRUNCATE TABLE temp_table1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

TRUNCATE TABLE temp_table2

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS temp_table2

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS temp_table1

