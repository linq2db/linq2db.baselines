-- SqlCe

CREATE TABLE [Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_Issue4671EntityTMP] PRIMARY KEY ([Id])
)

-- SqlCe

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

-- SqlCe

INSERT INTO [Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[Issue4671Entity] [t1]

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[Issue4671EntityTMP] [t1]

-- SqlCe

DROP TABLE [Issue4671EntityTMP]

