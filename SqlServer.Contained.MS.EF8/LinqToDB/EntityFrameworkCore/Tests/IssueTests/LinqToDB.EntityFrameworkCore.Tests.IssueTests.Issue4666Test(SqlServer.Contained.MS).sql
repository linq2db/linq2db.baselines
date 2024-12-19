--  SqlServer.2008

CREATE TABLE [tempdb]..[#Issue4666Temp]
(
	[Id]              int            NOT NULL IDENTITY,
	[Description]     nvarchar(max)      NULL,
	[Type]            int            NOT NULL,
	[Type1EntityProp] nvarchar(max)      NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#Issue4666Temp](Description, Type, Type1EntityProp)



--  SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#Issue4666Temp]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Issue4666Temp]



