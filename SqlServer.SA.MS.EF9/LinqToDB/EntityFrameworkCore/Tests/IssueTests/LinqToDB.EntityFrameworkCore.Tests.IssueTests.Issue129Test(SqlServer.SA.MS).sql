--  SqlServer.2008

CREATE TABLE [tempdb]..[#Issue129Table]
(
	[Id]  int  NOT NULL IDENTITY,
	[Key] int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



--  SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#Issue129Table]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Issue129Table]



