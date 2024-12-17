﻿BeforeExecute
-- SqlCe

DROP TABLE [TableWithIdentitySrc]

BeforeExecute
-- SqlCe

CREATE TABLE [TableWithIdentitySrc]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentitySrc] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [TableWithIdentity]

BeforeExecute
-- SqlCe

CREATE TABLE [TableWithIdentity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @addition Int -- Int32
SET     @addition = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
SELECT
	[t1].[Value] + @addition as [c1]
FROM
	[TableWithIdentitySrc] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TableWithIdentity]

BeforeExecute
-- SqlCe

DROP TABLE [TableWithIdentitySrc]

