﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1622Table
(
	Id       Int           NOT NULL,
	SomeText NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO Issue1622Table
(
	Id,
	SomeText
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.SomeText = 'Value1_suffix'

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1622Table

