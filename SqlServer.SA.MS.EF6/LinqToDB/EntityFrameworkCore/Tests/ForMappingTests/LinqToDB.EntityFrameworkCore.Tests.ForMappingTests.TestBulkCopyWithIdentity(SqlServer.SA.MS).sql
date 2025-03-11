--  SqlServer.2019

CREATE TABLE [tempdb]..[#WithIdentity]
(
	[Id]   int            NOT NULL IDENTITY,
	[Name] nvarchar(max)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#WithIdentity](Name)



--  SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#WithIdentity] [t1]



--  SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#WithIdentity]



