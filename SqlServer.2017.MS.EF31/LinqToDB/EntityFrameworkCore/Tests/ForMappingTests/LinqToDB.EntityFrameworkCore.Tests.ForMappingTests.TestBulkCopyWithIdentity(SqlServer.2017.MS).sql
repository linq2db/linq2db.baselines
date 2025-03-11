--  SqlServer.2017

CREATE TABLE [tempdb]..[#WithIdentity]
(
	[Id]   int            NOT NULL IDENTITY,
	[Name] nvarchar(max)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#WithIdentity](Name)



--  SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#WithIdentity] [t1]



--  SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#WithIdentity]



