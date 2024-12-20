﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4167Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4167Table
(
	ID        Int           NOT NULL,
	"Value"   NVarChar(255)     NULL,
	EnumValue Int               NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer(4) -- Int32
SET     @EnumValue = 0

INSERT INTO Issue4167Table
(
	ID,
	"Value",
	EnumValue
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer(4) -- Int32
SET     @EnumValue = 3

INSERT INTO Issue4167Table
(
	ID,
	"Value",
	EnumValue
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = NULL

INSERT INTO Issue4167Table
(
	ID,
	"Value",
	EnumValue
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4
DECLARE @Value VarChar(6) -- String
SET     @Value = '000002'
DECLARE @EnumValue Integer(4) -- Int32
SET     @EnumValue = 0

INSERT INTO Issue4167Table
(
	ID,
	"Value",
	EnumValue
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.EnumValue
FROM
	(
		SELECT
			CASE
				WHEN r.EnumValue IS NOT NULL THEN r.EnumValue
				ELSE 0
			END as EnumValue
		FROM
			Issue4167Table r
		WHERE
			r."Value" = '000001'
		GROUP BY
			r."Value",
			r.EnumValue
	) t1
ORDER BY
	t1.EnumValue

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4167Table

