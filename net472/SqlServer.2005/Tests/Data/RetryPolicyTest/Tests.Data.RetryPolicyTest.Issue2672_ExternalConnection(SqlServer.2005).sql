﻿BeforeExecute
--  SqlServer.2005

CREATE TABLE [MyEntity]
(
	[Id]   BigInt        NOT NULL,
	[Name] NVarChar(256) NOT NULL
)

BeforeExecute
--  SqlServer.2005

IF (OBJECT_ID(N'[MyEntity]', N'U') IS NOT NULL)
	DROP TABLE [MyEntity]

BeforeExecute
--  SqlServer.2005

CREATE TABLE [MyEntity]
(
	[Id]   BigInt        NOT NULL,
	[Name] NVarChar(256) NOT NULL
)

