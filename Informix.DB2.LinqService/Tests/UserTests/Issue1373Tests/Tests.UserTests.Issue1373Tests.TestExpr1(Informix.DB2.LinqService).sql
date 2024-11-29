BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1373Tests

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1373Tests
(
	Id     Int           NOT NULL,
	Field1 NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	2,
	@Field1::NVarChar(255)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Field1 VarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	3,
	@Field1::NVarChar(4)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1
FROM
	Issue1373Tests t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1373Tests

