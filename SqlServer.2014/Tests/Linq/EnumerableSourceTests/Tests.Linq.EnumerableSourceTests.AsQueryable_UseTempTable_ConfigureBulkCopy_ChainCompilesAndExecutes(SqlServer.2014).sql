-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_fb5eed0278fa]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

-- SqlServer.2014

INSERT INTO [tempdb]..[#T_fb5eed0278fa]
(
	[Id],
	[Data]
)
VALUES
(0,N'Data 0'),
(1,N'Data 1'),
(2,N'Data 2'),
(3,N'Data 3'),
(4,N'Data 4'),
(5,N'Data 5'),
(6,N'Data 6'),
(7,N'Data 7'),
(8,N'Data 8'),
(9,N'Data 9')

-- SqlServer.2014

INSERT INTO [tempdb]..[#T_fb5eed0278fa]
(
	[Id],
	[Data]
)
VALUES
(10,N'Data 10'),
(11,N'Data 11'),
(12,N'Data 12'),
(13,N'Data 13'),
(14,N'Data 14'),
(15,N'Data 15'),
(16,N'Data 16'),
(17,N'Data 17'),
(18,N'Data 18'),
(19,N'Data 19')

-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_fb5eed0278fa] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_fb5eed0278fa]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_fb5eed0278fa]

