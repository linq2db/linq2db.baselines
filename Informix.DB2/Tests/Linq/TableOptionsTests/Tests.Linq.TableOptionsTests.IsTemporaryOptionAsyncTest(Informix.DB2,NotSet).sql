-- Informix.DB2 Informix

CREATE TEMP TABLE temp_table1
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

INSERT BULK temp_table1

-- Informix.DB2 Informix

CREATE TEMP TABLE temp_table2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

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

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	temp_table1 t1

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	temp_table2 t1

-- Informix.DB2 Informix
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

-- Informix.DB2 Informix
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

INSERT BULK temp_table1

-- Informix.DB2 Informix

TRUNCATE TABLE temp_table1

-- Informix.DB2 Informix

TRUNCATE TABLE temp_table2

-- Informix.DB2 Informix

DROP TABLE IF EXISTS temp_table2

-- Informix.DB2 Informix

DROP TABLE IF EXISTS temp_table1

