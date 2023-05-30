BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TEMP TABLE IF NOT EXISTS temp_table1
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
INSERT BULK temp_table1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TEMP TABLE IF NOT EXISTS temp_table2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
-- Informix.DB2 Informix (asynchronously)
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @Value Integer(4) -- Int32
SET     @Value = 3

INSERT INTO temp_table1
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @Value Integer(4) -- Int32
SET     @Value = 3

INSERT INTO temp_table1
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
INSERT BULK temp_table1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

TRUNCATE TABLE temp_table1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

TRUNCATE TABLE temp_table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS temp_table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS temp_table1

