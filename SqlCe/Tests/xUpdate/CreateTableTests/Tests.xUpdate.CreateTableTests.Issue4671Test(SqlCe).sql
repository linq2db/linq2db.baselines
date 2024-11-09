BeforeExecute
-- SqlCe

DROP TABLE [Issue4671Entity]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4671Entity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL
)

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[Issue4671Entity] [t1]

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[Issue4671EntityTMP] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4671EntityTMP]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4671Entity]

