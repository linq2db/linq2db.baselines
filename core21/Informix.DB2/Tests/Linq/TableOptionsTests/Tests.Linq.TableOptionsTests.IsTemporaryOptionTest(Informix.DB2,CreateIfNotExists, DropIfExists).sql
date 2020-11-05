﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TEMP TABLE IF NOT EXISTS temp_table1
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
INSERT BULK temp_table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TEMP TABLE IF NOT EXISTS temp_table2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO temp_table2
(
	ID,
	"Value"
)
SELECT
	t1.ID,
	t1."Value"
FROM
	temp_table1 t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	temp_table1 t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	temp_table2 t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 3

INSERT INTO temp_table1
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 3

INSERT INTO temp_table1
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value_1
)

BeforeExecute
INSERT BULK temp_table1

BeforeExecute
-- Informix.DB2 Informix

TRUNCATE TABLE temp_table1

BeforeExecute
-- Informix.DB2 Informix

TRUNCATE TABLE temp_table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE temp_table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE temp_table1

