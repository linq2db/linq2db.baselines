BeforeExecute
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

WITH CTE_1 (EnumValue)
AS
(
	SELECT
		CASE
			WHEN g_1.EnumValue IS NOT NULL THEN g_1.EnumValue
			ELSE 0
		END
	FROM
		Issue4167Table g_1
	WHERE
		g_1."Value" = '000001'
	GROUP BY
		g_1."Value",
		g_1.EnumValue
)
SELECT
	t1.EnumValue
FROM
	CTE_1 t1
ORDER BY
	t1.EnumValue

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4167Table

