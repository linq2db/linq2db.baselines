﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BaseTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS BaseTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @BaseValue Integer(4) -- Int32
SET     @BaseValue = 100

INSERT INTO BaseTable
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@BaseValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	x.Id,
	x."Value"
FROM
	BaseTable x
WHERE
	x.Id = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	x.Id,
	x."Value"
FROM
	BaseTable x
WHERE
	x.Id = 1 AND x."Value" = 100

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BaseTable

