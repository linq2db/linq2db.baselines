BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestConstantsData

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TestConstantsData
(
	Id                Int           NOT NULL,
	GuidValue         VARCHAR(36)   NOT NULL,
	GuidNullableValue VARCHAR(36)       NULL,
	StringValue       NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidNullableValue Char(36) -- StringFixedLength
SET     @GuidNullableValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @StringValue VarChar(8) -- String
SET     @StringValue = 'StrValue'

INSERT INTO TestConstantsData
(
	Id,
	GuidValue,
	GuidNullableValue,
	StringValue
)
VALUES
(
	@Id,
	@GuidValue,
	@GuidNullableValue,
	@StringValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = 1 AND e.Id = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = 1 AND e.Id = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestConstantsData

