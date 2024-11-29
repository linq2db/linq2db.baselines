BeforeExecute
-- SqlCe

DROP TABLE [Issue4613Service]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4613Service]
(
	[IdContract] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue4613Contract]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4613Contract]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[Issue4613Service] [servProj]
		INNER JOIN [Issue4613Contract] [contract] ON [servProj].[IdContract] = [contract].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4613Contract]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4613Service]

