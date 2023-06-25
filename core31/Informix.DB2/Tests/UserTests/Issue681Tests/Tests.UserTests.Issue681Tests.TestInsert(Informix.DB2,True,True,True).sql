﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue681Table
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	DBSERVERNAME
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	user
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO testdb@informix:informix.Issue681Table
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
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table

