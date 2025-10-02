﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table1
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_temp_table1" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(1,2)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table2
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_temp_table2" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	temp_table1 t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	temp_table2 t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO temp_table1
(
	"ID",
	"Value"
)
VALUES
(2,3)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
INSERT BULK temp_table1(ID, Value)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

TRUNCATE TABLE temp_table1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

TRUNCATE TABLE temp_table2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS temp_table2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS temp_table1

