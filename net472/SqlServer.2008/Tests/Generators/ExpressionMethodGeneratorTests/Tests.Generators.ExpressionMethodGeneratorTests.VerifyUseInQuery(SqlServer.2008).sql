BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[ExprPerson]', N'U') IS NOT NULL)
	DROP TABLE [ExprPerson]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[ExprPerson]', N'U') IS NULL)
	CREATE TABLE [ExprPerson]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [ExprPerson]
(
	[Id],
	[Name]
)
VALUES
(0,N'Person0'),
(1,N'Person1'),
(2,N'Person2'),
(3,N'Person3'),
(4,N'Person4'),
(5,N'Person5'),
(6,N'Person6'),
(7,N'Person7'),
(8,N'Person8'),
(9,N'Person9'),
(10,N'Person10'),
(11,N'Person11'),
(12,N'Person12'),
(13,N'Person13'),
(14,N'Person14'),
(15,N'Person15'),
(16,N'Person16'),
(17,N'Person17'),
(18,N'Person18'),
(19,N'Person19')

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[ExprPerson]', N'U') IS NOT NULL)
	DROP TABLE [ExprPerson]

