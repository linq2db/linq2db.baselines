﻿BeforeExecute
-- SqlCe

CREATE TABLE [CreateTableTypes]
(
	[String] NVarChar(255) NOT NULL,
	[Id]     Int           NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @String NVarChar -- String
SET     @String = ''

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @String NVarChar(14) -- String
SET     @String = 'test max value'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- SqlCe

DROP TABLE [CreateTableTypes]

